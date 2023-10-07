<?php

namespace App\Http\Controllers;

use App\Models\Expenditure;
use Illuminate\Http\Request;

class ExpenditureController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $expenditures = Expenditure::query();

        if ($request->has('month')) {
            $month = $request->month;
            $expenditures->whereMonth('date', $month);
        }

        //sort by asc

        $expenditures = $expenditures->orderBy('created_at', 'desc')->get();

        return view('admin.pages.expenditure.index', compact('expenditures'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.pages.expenditure.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'description' => 'required',
            'amount' => 'required',
            'date' => 'required',
        ]);

        Expenditure::create($request->all());

        return redirect()->route('admin.expenditure.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Expenditure $expenditure)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Expenditure $expenditure)
    {
        return view('admin.pages.expenditure.edit', compact('expenditure'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Expenditure $expenditure)
    {
        $request->validate([
            'description' => 'required',
            'amount' => 'required',
            'date' => 'required',
        ]);

        $expenditure->update($request->all());

        return redirect()->route('admin.expenditure.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Expenditure $expenditure)
    {
        $expenditure->delete();

        return redirect()->route('admin.expenditure.index');
    }
}