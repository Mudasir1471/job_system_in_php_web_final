@extends('layout')

@section('title', ' JobPlus.pk - Find Your Dream`s Job')

@section('contentLatest All Jobs')

@section('content')
<div class="text-center mb-12">
    <h1 class="text-4xl font-extrabold text-gray-900 sm:text-5xl">Find Your Dream Job</h1>
    <p class="mt-4 text-xl text-gray-500">Browse the latest openings and apply today.</p>
</div>

<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
    @foreach($jobs as $job)
    <div class="bg-white rounded-2xl shadow-xl overflow-hidden hover:shadow-2xl transition duration-300 transform hover:-translate-y-1 border border-gray-100">
        <div class="h-48 w-full bg-gray-200 relative">
<img src="{{ str_starts_with($job->image, 'http') ? $job->image : asset('storage/' . $job->image) }}" 
     alt="{{ $job->title }}" class="w-full h-full object-cover">            <div class="absolute top-4 right-4 bg-white px-3 py-1 rounded-full text-xs font-bold text-indigo-600 shadow-sm">
                Apply by: {{ \Carbon\Carbon::parse($job->end_date)->format('M d') }}
            </div>
        </div>
        <div class="p-6">
            <h2 class="text-xl font-bold text-gray-900 mb-2 truncate">{{ $job->title }}</h2>
            <p class="text-gray-600 mb-4 line-clamp-3 text-sm">{{ $job->description }}</p>
            <div class="flex items-center justify-between mt-4">
                <span class="text-xs text-gray-400">Posted {{ $job->created_at->diffForHumans() }}</span>
                <a href="{{ route('jobs.show', $job->id) }}" class="text-indigo-600 font-semibold hover:text-indigo-800 text-sm flex items-center">
                    View Details &rarr;
                </a>
            </div>
        </div>
    </div>
    @endforeach
</div>

@if($jobs->isEmpty())
    <div class="text-center py-20">
        <p class="text-gray-500 text-lg">No active job listings found right now.</p>
    </div>
@endif
@endsection