<?php

namespace App\Http\Controllers;

use App\Models\Approval;
use App\Models\Expenditure;
use App\Models\ExpenditureMal;
use App\Models\Income;
use App\Models\Mustahik;
use App\Models\Muzaki;
use App\Models\Reception;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        if (Auth::user()->role == 'admin') {
            $user = User::where('role', 'user')->count();
            $admin = User::where('role', 'admin')->count();
            $totalIncome = Income::sum('amount');
            $totalExpenditure = Expenditure::sum('amount');

            $monthlyIncome = Income::selectRaw('MONTH(date) as month, SUM(amount) as total_amount')
                ->groupBy('month')
                ->orderBy('month')
                ->get();

            $monthlyExpenditures = Expenditure::selectRaw('MONTH(date) as month, SUM(amount) as total_amount')
                ->groupBy('month')
                ->orderBy('month')
                ->get();

            $monthIncome = $monthlyIncome->pluck('total_amount');
            $monthExpenditures = $monthlyExpenditures->pluck('total_amount');

            return view('admin.pages.home', compact('user', 'admin', 'totalIncome', 'totalExpenditure', 'monthIncome', 'monthExpenditures'));
        } else {
            $user = Mustahik::count();
            $admin = Muzaki::count();
            $totalIncome = Approval::sum('amount');
            $a = Reception::sum('amount');
            $b = ExpenditureMal::sum('amount');
            $totalExpenditure = $a + $b;

            $monthlyIncome = Reception::selectRaw('MONTH(priode) as month, SUM(amount) as total_amount')
                ->groupBy('month')
                ->orderBy('month')
                ->get();

            $monthlyExpenditures = ExpenditureMal::selectRaw('MONTH(priode) as month, SUM(amount) as total_amount')
                ->groupBy('month')
                ->orderBy('month')
                ->get();

            $monthIncome = $monthlyIncome->pluck('total_amount');
            $monthExpenditures = $monthlyExpenditures->pluck('total_amount');

            return view('admin.pages.home', compact('user', 'admin', 'totalIncome', 'totalExpenditure', 'monthIncome', 'monthExpenditures'));
        }

    }

}