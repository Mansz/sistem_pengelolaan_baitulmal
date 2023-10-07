<?php

namespace App\Http\Controllers;

use App\Models\Mustahik;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class MustahikController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $mustahik = Mustahik::query();
        // jika ada request year maka lakukan sorting
        if ($request->has('year')) {
            $mustahik->whereYear('date', $request->year);
        }

        $mustahik = $mustahik->orderBy('created_at', 'desc')->get();
        return view('admin.pages.mustahik.index', compact('mustahik'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.pages.mustahik.create');
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
        if ($request->hasFile('file')) {
            $request->validate([
                'file' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            ]);
            //upload photo
            $imageName = time() . '.' . $request->file->extension();
            $request->file->move(public_path('file/'), $imageName);
            $request['photo'] = $imageName;
        }
        Mustahik::create($request->except('file'));
        return redirect()->route('admin.mustahik.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Mustahik $mustahik)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Mustahik $mustahik)
    {
        return view('admin.pages.mustahik.edit', compact('mustahik'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Mustahik $mustahik)
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

        if ($request->hasFile('file')) {
            $imageName = time() . '.' . $request->file->extension();
            $request->file->move(public_path('file/'), $imageName);
            if ($mustahik->photo) {
                File::delete('file/' . $mustahik->photo);
            }
        } else {
            $imageName = $mustahik->photo;
        }
        $request['photo'] = $imageName;
        $mustahik->update($request->except('file'));
        return redirect()->route('admin.mustahik.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Mustahik $mustahik)
    {
        File::delete('file/' . $mustahik->photo);
        $mustahik->delete();
        return redirect()->route('admin.mustahik.index');
    }
}