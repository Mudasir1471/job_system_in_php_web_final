<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Job;
use Carbon\Carbon;

class JobSeeder extends Seeder
{
    public function run(): void
    {
        // Real Pakistani Companies
        $companies = [
            'Systems Limited', 'Netsol Technologies', 'Arbisoft', 'Devsinc', '10Pearls',
            'Jazz', 'Telenor Pakistan', 'Zong 4G', 'PTCL', 'Ufone',
            'HBL', 'Meezan Bank', 'Bank Alfalah', 'Sadapay', 'Nayapay',
            'Descon', 'Engro Corp', 'Khaadi', 'Sapphire', 'Airlift'
        ];

        // Common Job Roles
        $roles = [
            'Senior Laravel Developer', 'React Native Engineer', 'Data Analyst', 
            'Human Resource Manager', 'Digital Marketing Specialist', 'Graphics Designer',
            'SQA Engineer', 'Project Manager', 'Customer Support Executive', 'Network Engineer'
        ];

        // High Quality Unsplash Image URLs (Office & Tech)
        $images = [
            'https://images.unsplash.com/photo-1497215728101-856f4ea42174?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', // Office
            'https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', // Coding
            'https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Team
            'https://images.unsplash.com/photo-1531973576160-7125cd663d86?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Company
            'https://images.unsplash.com/photo-1516321318423-f06f85e504b3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Laptop
            'https://images.unsplash.com/photo-1556761175-5973dc0f32e7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1490&q=80', // Meeting
            'https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&auto=format&fit=crop&w=1064&q=80', // Office open
            'https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', // Typing
        ];

        // Create 50 Random Jobs
        for ($i = 0; $i < 50; $i++) {
            $company = $companies[array_rand($companies)];
            $role = $roles[array_rand($roles)];
            $image = $images[array_rand($images)]; // Pick random image URL
            
            $startDate = Carbon::now()->subDays(rand(0, 30));
            $endDate = Carbon::now()->addDays(rand(7, 60));

            Job::create([
                'title' => "$role at $company",
                'description' => "We are looking for a talented $role to join our team at $company.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote",
                'image' => $image, // Saving the URL directly
                'start_date' => $startDate,
                'end_date' => $endDate,
            ]);
        }
    }
}