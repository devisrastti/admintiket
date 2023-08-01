<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request as HttpRequest;
use Illuminate\Support\Facades\DB;

class HistoryController extends Controller
{
    public function index()
    {
        $history = DB::table('pesanan')->get();
        //return $history;
        return view('history/index', compact('history'));
    }

    public function delete($id)
    {
        DB::table('pesanan')->where('id', $id)->delete();
        return redirect('history')->with('status','Data Berhasil di Hapus!');
    }


}
