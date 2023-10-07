<?php

namespace App\Http\Controllers;

use App\Models\ExpenditureMal;
use Illuminate\Http\Request;

class ExpenditureMalController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $expenditureMals = ExpenditureMal::query();
        // jika ada request year maka lakukan sorting
        if ($request->has('year')) {
            $expenditureMals->whereYear('priode', $request->year);
        }

        $expenditureMals = $expenditureMals->orderBy('created_at', 'desc')->get();

        return view('admin.pages.expenditureMal.index', compact('expenditureMals'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.pages.expenditureMal.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'priode' => 'required',
            'amount' => 'required',
            'description' => 'required',
        ]);
        ExpenditureMal::create($request->all());

        return redirect()->route('admin.expenditureMal.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(ExpenditureMal $expenditureMal)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ExpenditureMal $expenditureMal)
    {
        return view('admin.pages.expenditureMal.edit', compact('expenditureMal'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ExpenditureMal $expenditureMal)
    {
        $request->validate([
            'priode' => 'required',
            'amount' => 'required',
            'description' => 'required',
        ]);

        $expenditureMal->update($request->all());

        return redirect()->route('admin.expenditureMal.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ExpenditureMal $expenditureMal)
    {
        $expenditureMal->delete();

        return redirect()->route('admin.expenditureMal.index');
    }
}