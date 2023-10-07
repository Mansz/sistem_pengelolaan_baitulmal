<?php

namespace App\Http\Controllers;

use App\Models\Mustahik;
use App\Models\Reception;
use Illuminate\Http\Request;

class ReceptionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $receptions = Reception::query();
        // jika ada request year maka lakukan sorting
        if ($request->has('year')) {
            $receptions->whereYear('priode', $request->year);
        }

        $receptions = $receptions->orderBy('created_at', 'desc')->get();

        return view('admin.pages.reception.index', compact('receptions'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.pages.reception.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'rw' => 'required|numeric',
            'priode' => 'required|date',
        ]);

        //melakukakan perhitungan dari table mustahik berdasarkan RW lalu menghitung jumlah orang dan nominal uangnya
        $amount = 0;
        $number_people = 0;
        //mengambil data mustahik rw berdasarkan priode dari request dan date dari table mustahik dengan satuan tahun
        $mustahiks = Mustahik::whereYear('date', $request->priode)->where('rw', $request->rw)->get();

        // $mustahiks = Mustahik::where('rw', $request->rw)->get();
        foreach ($mustahiks as $mustahik) {
            $amount += $mustahik->amount;
            $number_people += 1;
        }

        $request['amount'] = $amount;
        $request['number_people'] = $number_people;

        Reception::create($request->all());

        return redirect()->route('admin.reception.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Reception $reception)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Reception $reception)
    {
        return view('admin.pages.reception.edit', compact('reception'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Reception $reception)
    {
        $request->validate([
            'rw' => 'required|numeric',
            'priode' => 'required|date',
        ]);

        //melakukakan perhitungan dari table mustahik berdasarkan RW lalu menghitung jumlah orang dan nominal uangnya
        $amount = 0;
        $number_people = 0;
        //mengambil data mustahik rw berdasarkan priode dari request dan date dari table mustahik dengan satuan tahun
        $mustahiks = Mustahik::whereYear('date', $request->priode)->where('rw', $request->rw)->get();

        // $mustahiks = Mustahik::where('rw', $request->rw)->get();
        foreach ($mustahiks as $mustahik) {
            $amount += $mustahik->amount;
            $number_people += 1;
        }

        $request['amount'] = $amount;
        $request['number_people'] = $number_people;
        $reception->update($request->all());

        return redirect()->route('admin.reception.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Reception $reception)
    {
        $reception->delete();

        return redirect()->route('admin.reception.index');
    }

    public function refresh()
    {
        $mustahiks = Mustahik::all();
        //menghitung ulang seluruh tabel reception berdasarkan rw dan priode dari tabel mustahik
        foreach ($mustahiks as $mustahik) {
            $amount = 0;
            $number_people = 0;
            //mengambil data mustahik rw berdasarkan priode dari request dan date dari table mustahik dengan satuan tahun
            $mustahiks = Mustahik::whereYear('date', $mustahik->date)->where('rw', $mustahik->rw)->get();

            // $mustahiks = Mustahik::where('rw', $request->rw)->get();
            foreach ($mustahiks as $mustahik) {
                $amount += $mustahik->amount;
                $number_people += 1;
            }
            //cek jika ada data baru dari mustahik maka create data jika sudah ada maka update data
            if (!Reception::where('rw', $mustahik->rw)->whereYear('priode', $mustahik->date)->first()) {
                Reception::create([
                    'rw' => $mustahik->rw,
                    'priode' => $mustahik->date,
                    'amount' => $amount,
                    'number_people' => $number_people,
                ]);
            }

            $reception = Reception::where('rw', $mustahik->rw)->whereYear('priode', $mustahik->date)->first();
            if ($reception) {
                $reception->update([
                    'amount' => $amount,
                    'number_people' => $number_people,
                ]);
            }
        }

        return redirect()->route('admin.reception.index');
    }
}