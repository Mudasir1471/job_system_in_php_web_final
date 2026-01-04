@extends('layout')

@section('title', 'Admin Login')

@section('content')
<div class="min-h-[60vh] flex flex-col justify-center items-center">
    <div class="w-full max-w-md bg-white p-8 rounded-2xl shadow-xl border border-gray-100">
        <div class="text-center mb-8">
            <h2 class="text-3xl font-extrabold text-gray-900">Admin Login</h2>
            <p class="text-gray-500 mt-2">Please enter your credentials to post a job.</p>
        </div>

        @if(session('error'))
            <div class="bg-red-100 border-l-4 border-red-500 text-red-700 p-4 mb-6 rounded" role="alert">
                <p>{{ session('error') }}</p>
            </div>
        @endif

        <form action="{{ route('admin.check') }}" method="POST" class="space-y-6">
            @csrf
            
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">Username</label>
                <input type="text" name="username" required class="w-full px-4 py-3 rounded-lg border border-gray-300 focus:ring-2 focus:ring-indigo-500 outline-none transition" placeholder="Enter username">
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">Password</label>
                <input type="password" name="password" required class="w-full px-4 py-3 rounded-lg border border-gray-300 focus:ring-2 focus:ring-indigo-500 outline-none transition" placeholder="Enter password">
            </div>

            <button type="submit" class="w-full bg-indigo-600 text-white font-bold py-3 px-4 rounded-lg hover:bg-indigo-700 transition shadow-lg transform active:scale-95">
                Login
            </button>
        </form>

        <div class="mt-6 text-center">
            <a href="{{ route('jobs.index') }}" class="text-sm text-gray-500 hover:text-indigo-600">Back to Home</a>
        </div>
    </div>
</div>
@endsection