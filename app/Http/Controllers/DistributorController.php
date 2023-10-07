<?php

namespace App\Http\Controllers;

use App\Models\Distributor;
use Illuminate\Http\Request;

class DistributorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $distributors = Distributor::all();

        return view('admin.pages.distributor.index', compact('distributors'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.pages.distributor.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $request->validate([
            'rw' => 'required|numeric',
            'priode' => 'required|date',
            'amount' => 'required|numeric',
        ]);

        Distributor::create($request->all());

        return redirect()->route('admin.distributor.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Distributor $distributor)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Distributor $distributor)
    {
        return view('admin.pages.distributor.edit', compact('distributor'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Distributor $distributor)
    {

        $request->validate([
            'rw' => 'required|numeric',
            'priode' => 'required|date',
            'amount' => 'required|numeric',
        ]);

        $distributor->update($request->all());

        return redirect()->route('admin.distributor.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Distributor $distributor)
    {
        $distributor->delete();

        return redirect()->route('admin.distributor.index');
    }
}