<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        // Ambil data ajuan milik user yang login dan urutkan berdasarkan tanggal
        $ajuan = DB::table('ajuan')
            ->where('user_id', auth()->id())
            ->orderBy('tanggal', 'desc')  // Urutkan berdasarkan tanggal terbaru
            ->get();  // Gunakan get() untuk mengambil banyak data
    
        return view('user.dashboard', compact('ajuan'));
    }
    

    public function tambah()
    {
        return view('user.tambah'); // Assuming you have this view
    }

    public function store(Request $request)
    {
        // Validasi data input
        $request->validate([
            'nama' => 'required|string|max:255',
            'asal' => 'required|string|max:255',
            'nomor_wa' => 'required|string|max:20',
            'jenis' => 'required|string',
            'tanggal' => 'required|date',
            'jam' => 'required|date_format:H:i',
        ]);
    
        // Ambil ID user yang sedang login
        $userId = auth()->id();
    
        // Insert data ke tabel `ajuan` menggunakan Query Builder
        DB::table('ajuan')->insert([
            'nama' => $request->input('nama'),
            'asal' => $request->input('asal'),
            'whatsapp' => $request->input('nomor_wa'),
            'jenis' => $request->input('jenis'),
            'tanggal' => $request->input('tanggal'),
            'jam' => $request->input('jam'),
            'status' => 1, // Default status, bisa disesuaikan
            'user_id' => $userId, // Menambahkan user_id
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    
        // Redirect dengan pesan sukses
        return redirect()->route('user.dashboard')->with('success', 'Data berhasil ditambahkan.');
    }    

    public function edit($id)
    {
        // Ambil data berdasarkan ID dan pastikan user_id sesuai dengan user yang sedang login
        $ajuan = DB::table('ajuan')->where('id', $id)->where('user_id', auth()->id())->first();
    
        // Periksa apakah data ditemukan
        if (!$ajuan) {
            return redirect()->route('user.dashboard')->with('error', 'Data tidak ditemukan.');
        }
    
        return view('user.edit', compact('ajuan'));
    }
    
    
    public function update(Request $request, $id)
    {
        // Validasi input
        $request->validate([
            'nama' => 'required|string|max:255',
            'asal' => 'required|string|max:255',
            'nomor_wa' => 'required|string|max:20',
            'jenis' => 'required|string',
            'tanggal' => 'required|date',
            'jam' => 'required|date_format:H:i',
        ]);
    
        // Update data hanya jika user_id sesuai dengan yang sedang login
        $updated = DB::table('ajuan')
            ->where('id', $id)
            ->where('user_id', auth()->id()) // Pastikan hanya bisa mengupdate data milik user yang sedang login
            ->update([
                'nama' => $request->nama,
                'asal' => $request->asal,
                'whatsapp' => $request->nomor_wa,
                'jenis' => $request->jenis === 'Kunjungan' ? 1 : 2,
                'tanggal' => $request->tanggal,
                'jam' => $request->jam,
                'status' => 3, // Menetapkan status baru atau menyesuaikan dengan logika yang diinginkan
                'updated_at' => now(),
            ]);
    
        if ($updated) {
            return redirect()->route('user.dashboard')->with('success', 'Data berhasil diperbarui.');
        } else {
            return redirect()->route('user.dashboard')->with('error', 'Data gagal diperbarui.');
        }
    }
    

    public function show($id)
    {
        // Ambil data berdasarkan ID dan pastikan user_id sesuai dengan user yang sedang login
        $ajuan = DB::table('ajuan')->where('id', $id)->where('user_id', auth()->id())->first();
    
        // Periksa apakah data ditemukan
        if (!$ajuan) {
            return redirect()->route('user.dashboard')->with('error', 'Data tidak ditemukan.');
        }
    
        return view('user.detail', compact('ajuan'));
    }
    
}    