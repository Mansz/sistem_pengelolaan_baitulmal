<?php

namespace App\Http\Controllers;

use App\Models\Muzaki;
use Illuminate\Http\Request;

class MuzakiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $muzaki = Muzaki::query();
        // jika ada request year maka lakukan sorting
        if ($request->has('year')) {
            $muzaki->whereYear('date', $request->year);
        }
        $muzaki = $muzaki->orderBy('created_at', 'desc')->get();
        return view('admin.pages.muzaki.index', compact('muzaki'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.pages.muzaki.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'address' => 'required',
            'type' => 'required',
            'rt' => 'required|numeric',
            'rw' => 'required|numeric',
            'amount' => 'required|numeric',
            'date' => 'required|date',
        ]);

        Muzaki::create($request->all());
        return redirect()->route('admin.muzaki.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Muzaki $muzaki)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Muzaki $muzaki)
    {
        return view('admin.pages.muzaki.edit', compact('muzaki'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Muzaki $muzaki)
    {
        $request->validate([
            'name' => 'required',
            'address' => 'required',
            'type' => 'required',
            'rt' => 'required|numeric',
            'rw' => 'required|numeric',
            'amount' => 'required|numeric',
            'date' => 'required|date',
        ]);

        $muzaki->update($request->all());
        return redirect()->route('admin.muzaki.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Muzaki $muzaki)
    {
        $muzaki->delete();
        return redirect()->route('admin.muzaki.index');
    }
}