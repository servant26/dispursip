<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    // Display the admin dashboard
    public function index()
    {
        return view('dashboard.admin'); // Assuming you have this view
    }
}
