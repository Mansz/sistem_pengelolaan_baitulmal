<?php

namespace App\Http\Controllers;

use App\Models\Approval;
use App\Models\Muzaki;
use Illuminate\Http\Request;

class ApprovalController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $approvals = Approval::query();
        // jika ada request year maka lakukan sorting
        if ($request->has('year')) {
            $approvals->whereYear('date', $request->year);
        }

        $approvals = $approvals->orderBy('created_at', 'desc')->get();

        return view('admin.pages.approval.index', compact('approvals'));
    }

    public function refresh()
    {
        $muzakis = Muzaki::all();
        //menghitung ulang seluruh tabel reception berdasarkan rw dan date dari tabel mustahik
        foreach ($muzakis as $Muzaki) {
            $amount = 0;
            $number_people = 0;
            //mengambil data Muzaki rw berdasarkan date dari request dan date dari table Muzaki dengan satuan tahun
            $muzakis = Muzaki::whereYear('date', $Muzaki->date)->where('rw', $Muzaki->rw)->get();

            // $muzakis = Muzaki::where('rw', $request->rw)->get();
            foreach ($muzakis as $Muzaki) {
                $amount += $Muzaki->amount;
                $number_people += 1;
            }
            //cek jika ada data baru dari Muzaki maka create data jika sudah ada maka update data
            if (!Approval::where('rw', $Muzaki->rw)->whereYear('date', $Muzaki->date)->first()) {
                Approval::create([
                    'rw' => $Muzaki->rw,
                    'date' => $Muzaki->date,
                    'amount' => $amount,
                    'number_people' => $number_people,
                ]);
            }

            $approval = Approval::where('rw', $Muzaki->rw)->whereYear('date', $Muzaki->date)->first();
            if ($approval) {
                $approval->update([
                    'amount' => $amount,
                    'number_people' => $number_people,
                ]);
            }
        }

        return redirect()->route('admin.approval.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Approval $approval)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Approval $approval)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Approval $approval)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Approval $approval)
    {
        //
    }
}