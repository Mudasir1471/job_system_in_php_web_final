@extends('layout')

@section('title', $job->title . ' - JobPlus.pk')

@section('content')
<div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
    
    <div class="lg:col-span-2">
        <div class="bg-white rounded-2xl shadow-xl overflow-hidden border border-gray-100">
<img src="{{ str_starts_with($job->image, 'http') ? $job->image : asset('storage/' . $job->image) }}" 
     class="w-full h-64 object-cover">            <div class="p-8">
                <div class="flex justify-between items-start mb-4">
                    <h1 class="text-3xl font-bold text-gray-900">{{ $job->title }}</h1>
                    <span class="bg-indigo-100 text-indigo-800 text-xs font-semibold px-3 py-1 rounded-full">
                        Ends: {{ \Carbon\Carbon::parse($job->end_date)->format('M d, Y') }}
                    </span>
                </div>
                
                <div class="prose max-w-none text-gray-700 leading-relaxed">
                    {!! nl2br(e($job->description)) !!}
                </div>
                
                <div class="mt-8 pt-6 border-t border-gray-100 text-sm text-gray-500">
                    Job ID: #{{ $job->id }} &bull; Posted: {{ $job->created_at->format('M d, Y') }}
                </div>
            </div>
        </div>
    </div>

    <div class="lg:col-span-1">
        <div class="bg-white p-6 rounded-2xl shadow-xl border border-gray-100 sticky top-24">
            <h3 class="text-xl font-bold text-gray-900 mb-4">Apply Now</h3>
            <p class="text-sm text-gray-500 mb-6">Interested? Send your details quickly.</p>

            <form action="{{ route('jobs.apply', $job->id) }}" method="POST" class="space-y-4">
                @csrf
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">Full Name</label>
                    <input type="text" name="name" required class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-indigo-500 outline-none">
                </div>
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">Email Address</label>
                    <input type="email" name="email" required class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-indigo-500 outline-none">
                </div>
                <button type="submit" class="w-full bg-green-600 text-white font-bold py-3 px-4 rounded-lg hover:bg-green-700 transition shadow-md">
                    Submit Application
                </button>
            </form>
        </div>
    </div>
</div>
@endsection