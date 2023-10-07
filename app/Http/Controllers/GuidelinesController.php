<?php

namespace App\Http\Controllers;

use App\Models\Guidelines;
use File;
use Illuminate\Http\Request;

class GuidelinesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $guidelines = Guidelines::first();
        $count = Guidelines::count();
        return view('admin.pages.guidelines.index', compact('guidelines', 'count'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.pages.guidelines.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'file' => 'required',
        ]);
        //upload photo
        $imageName = time() . '.' . $request->file->extension();
        $request->file->move(public_path('file/'), $imageName);
        $request['pdf'] = $imageName;
        Guidelines::create($request->except('file'));
        return redirect()->route('admin.guidelines.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Guidelines $guidelines)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Guidelines $guideline)
    {
        return view('admin.pages.guidelines.edit', compact('guideline'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Guidelines $guideline)
    {
        //upload photo

        if ($request->hasFile('file')) {
            $imageName = time() . '.' . $request->file->extension();
            $request->file->move(public_path('file/'), $imageName);
            if ($guideline->pdf) {
                File::delete('file/' . $guideline->pdf);
            }
        } else {
            $imageName = $guideline->pdf;
        }
        ;
        $request['pdf'] = $imageName;
        $guideline->update($request->except('file'));

        return redirect()->route('admin.guidelines.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $guidelines = Guidelines::findOrFail($id);
        File::delete('file/' . $guidelines->pdf);
        $guidelines->delete();
        return redirect()->route('admin.guidelines.index');
    }
}