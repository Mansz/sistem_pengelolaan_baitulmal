<?php

namespace App\Http\Controllers;

use App\Models\Organization;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class OrganizationController extends Controller
{
    public function index()
    {
        $organization = Organization::first();
        $count = Organization::count();
        return view('admin.pages.organization.index', compact('organization', 'count'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.pages.organization.create');
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
        Organization::create($request->except('file'));
        return redirect()->route('admin.organization.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Organization $Organization)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $organization = Organization::findOrFail($id);
        return view('admin.pages.organization.edit', compact('organization'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {

        $organization = Organization::findOrFail($id);
        //upload photo

        if ($request->hasFile('file')) {
            $imageName = time() . '.' . $request->file->extension();
            $request->file->move(public_path('file/'), $imageName);
            if ($organization->pdf) {
                File::delete('file/' . $organization->pdf);
            }
        } else {
            $imageName = $organization->pdf;
        }
        ;
        $request['pdf'] = $imageName;
        $organization->update($request->except('file'));

        return redirect()->route('admin.organization.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $organization = Organization::findOrFail($id);
        File::delete('file/' . $organization->pdf);
        $organization->delete();
        return redirect()->route('admin.organization.index');
    }
}