<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class StaffController extends Controller
{
    // Display the staff dashboard
    public function index()
    {
        $ajuan = DB::table('ajuan')
        ->orderBy('tanggal', 'desc')
        ->get();
        $reschedule = DB::table('ajuan')->where('status', 3)->count();

        $kunjungan = DB::table('ajuan')
            ->where('jenis', '1')
            ->where('status', 1)
            ->count();    

        $reservasi = DB::table('ajuan')
            ->where('jenis', '2')
            ->where('status', 1)
            ->count();

        return view('staff.dashboard', compact('ajuan', 'reschedule', 'kunjungan', 'reservasi'));
    }

    // public function tambah()
    // {
    //     return view('staff.tambah'); // Assuming you have this view
    // }

    // public function store(Request $request)
    // {
    //     // Validasi data input
    //     $request->validate([
    //         'nama' => 'required|string|max:255',
    //         'asal' => 'required|string|max:255',
    //         'nomor_wa' => 'required|string|max:20',
    //         'jenis' => 'required|string',
    //         'tanggal' => 'required|date',
    //         'jam' => 'required|date_format:H:i',
    //     ]);

    //     // Insert data ke tabel `ajuan` menggunakan Query Builder
    //     DB::table('ajuan')->insert([
    //         'nama' => $request->input('nama'),
    //         'asal' => $request->input('asal'),
    //         'whatsapp' => $request->input('nomor_wa'),
    //         'jenis' => $request->input('jenis'),
    //         'tanggal' => $request->input('tanggal'),
    //         'jam' => $request->input('jam'),
    //         'status' => 2, // Default status, bisa disesuaikan
    //         'created_at' => now(),
    //         'updated_at' => now(),
    //     ]);

    //     // Redirect dengan pesan sukses
    //     return redirect()->route('staff.dashboard')->with('success', 'Data berhasil ditambahkan.');
    // }

    // public function edit($id)
    // {
    //     // Ambil data berdasarkan ID
    //     $ajuan = DB::table('ajuan')->where('id', $id)->first();

    //     // Periksa apakah data ditemukan
    //     if (!$ajuan) {
    //         return redirect()->route('staff.dashboard')->with('error', 'Data tidak ditemukan.');
    //     }

    //     return view('staff.edit', compact('ajuan'));
    // }

    // public function update(Request $request, $id)
    // {
    //     // Validasi input
    //     $request->validate([
    //         'nama' => 'required|string|max:255',
    //         'asal' => 'required|string|max:255',
    //         'nomor_wa' => 'required|string|max:20',
    //         'jenis' => 'required|string',
    //         'tanggal' => 'required|date',
    //         'jam' => 'required|date_format:H:i',
    //     ]);

    //     // Update data
    //     DB::table('ajuan')
    //         ->where('id', $id)
    //         ->update([
    //             'nama' => $request->nama,
    //             'asal' => $request->asal,
    //             'whatsapp' => $request->nomor_wa,
    //             'jenis' => $request->jenis === 'Kunjungan' ? 1 : 2,
    //             'tanggal' => $request->tanggal,
    //             'jam' => $request->jam,
    //             'status' => 2, // Nilai default
    //             'updated_at' => now(),
    //         ]);

    //     return redirect()->route('staff.dashboard')->with('success', 'Data berhasil diperbarui.');
    // }


    public function reschedule()
    {
        $reschedule = DB::table('ajuan')->where('status', 3)->get();
        return view('staff.reschedule', compact('reschedule'));
    }

    public function kunjungan()
    {
        $kunjungan = DB::table('ajuan')
                        ->where('jenis', 1) 
                        ->where('status', 1) 
                        ->get();
        return view('staff.kunjungan', compact('kunjungan'));
    }

    public function reservasi()
    {
        $reservasi = DB::table('ajuan')
                        ->where('jenis', 2) 
                        ->where('status', 1) 
                        ->get();
        return view('staff.reservasi', compact('reservasi'));
    }

    public function saran()
    {
        return view('staff.saran'); // Assuming you have this view
    }
}