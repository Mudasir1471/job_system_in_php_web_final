<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\JobController;

Route::get('/', [JobController::class, 'index'])->name('jobs.index');

// Public Job Details & Apply
Route::get('/jobs/{job}', [JobController::class, 'show'])->name('jobs.show');
Route::post('/jobs/{job}/apply', [JobController::class, 'apply'])->name('jobs.apply');

// Admin Login Routes (Hardcoded)
Route::get('/admin/login', [JobController::class, 'loginView'])->name('admin.login');
Route::post('/admin/login', [JobController::class, 'loginCheck'])->name('admin.check');

// Protected Routes (Require Login)
Route::get('/create', [JobController::class, 'create'])->name('jobs.create');
Route::post('/store', [JobController::class, 'store'])->name('jobs.store');