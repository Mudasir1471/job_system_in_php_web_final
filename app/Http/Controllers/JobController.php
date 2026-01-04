<?php

namespace App\Http\Controllers;

use App\Models\Job;
use App\Models\Application;
use Illuminate\Http\Request;

class JobController extends Controller
{
    // ... index method stays the same ...
    public function index()
    {
        $jobs = Job::where('end_date', '>=', now())->latest()->get();
        return view('jobs.index', compact('jobs'));
    }

    // --- NEW: Login View ---
    public function loginView()
    {
        return view('admin.login');
    }

    // --- NEW: Check Credentials (Hardcoded) ---
    public function loginCheck(Request $request)
    {
        // Simple Hardcoded Check
        if ($request->username === 'admin' && $request->password === 'admin') {
            // Save login status to session
            session(['is_admin' => true]);
            return redirect()->route('jobs.create');
        }

        return back()->with('error', 'Wrong username or password.');
    }

    // --- UPDATED: Protect the Create Page ---
    public function create()
    {
        // Check if user is logged in via session
        if (!session('is_admin')) {
            return redirect()->route('admin.login');
        }
        
        return view('jobs.create');
    }

    // --- UPDATED: Protect the Store Action ---
    public function store(Request $request)
    {
        // Security check
        if (!session('is_admin')) {
            return redirect()->route('admin.login');
        }

        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg|max:2048',
            'start_date' => 'required|date',
            'end_date' => 'required|date|after_or_equal:start_date',
        ]);

        $imagePath = $request->file('image')->store('jobs', 'public');

        Job::create([
            'title' => $request->title,
            'description' => $request->description,
            'image' => $imagePath,
            'start_date' => $request->start_date,
            'end_date' => $request->end_date,
        ]);

        return redirect()->route('jobs.index')->with('success', 'Job Posted Successfully!');
    }

    // ... show and apply methods stay the same ...
    public function show(Job $job)
    {
        return view('jobs.show', compact('job'));
    }

    public function apply(Request $request, Job $job)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
        ]);

        Application::create([
            'job_id' => $job->id,
            'applicant_name' => $request->name,
            'applicant_email' => $request->email,
        ]);

        return back()->with('success', 'Application Submitted Successfully!');
    }
}