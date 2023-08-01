<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request as HttpRequest;
use Illuminate\Support\Facades\DB;


class JadwalController extends Controller
{
    public function data()
    {
        $jadwal = DB::table('jadwal')->get();

        //return $jadwal;

       return view('jadwal.data', ['jadwal' => $jadwal]);
    }

    public function tambahdata()
    {
        return view('jadwal.tambahdata');
    }

    public function tambahdataproses(FormRequest $request)
    {
        DB::table('jadwal')->insert([
            'kota_asal' => $request->kota_asal,
            'kota_tujuan' => $request->kota_tujuan,
            'hari' => $request->date,
            'jam' => $request->time,
            'harga' => $request->harga
        ]);
        return redirect('jadwal')->with('status','Data Berhasil Ditambah!');
    }

    public function editdata($id)
    {
        $jadwal = DB::table('jadwal')->where('id', $id)->first();
        return view('jadwal.editdata', compact('jadwal'));
    }

    public function editdataproses(FormRequest $request, $id)
    {
        DB::table('jadwal')->where('id', $id)
            ->update([
            'kota_asal' => $request->kota_asal,
            'kota_tujuan' => $request->kota_tujuan,
            'hari' => $request->date,
            'jam' => $request->time,
            'harga' => $request->harga
            ]);
        return redirect('jadwal')->with('status','Data Berhasil di Edit!');
    }

    public function delete($id)
    {
        DB::table('jadwal')->where('id', $id)->delete();
        return redirect('jadwal')->with('status','Data Berhasil di Hapus!');
    }

}
