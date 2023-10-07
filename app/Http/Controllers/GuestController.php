<?php

namespace App\Http\Controllers;

use App\Models\About;
use App\Models\Contact;
use Illuminate\Http\Request;
use App\Models\Slide;
use App\Models\News;

class GuestController extends Controller
{
    public function index()
    {
        $news = News::inRandomOrder()->limit(3)->get();
        $news1 = News::inRandomOrder()->limit(3)->get();
        $news2 = News::inRandomOrder()->limit(3)->get();
        $slides = Slide::where('is_active', true)->inRandomOrder()->get();
        return view('guest.home.index', compact('news', 'slides', 'news1', 'news2'));
    }

    public function about()
    {
        $about = About::first();
        return view('guest.home.about', compact('about'));
    }

    public function news()
    {
        $news = News::paginate(5);
        return view('guest.home.news', compact('news'));
    }
    public function showNews($id)
    {
        $news = News::findOrFail($id);
        return view('guest.home.showNews', compact('news'));
    }

    public function gallery()
    {
        $gallery = Slide::paginate(9);
        return view('guest.home.gallery', compact('gallery'));
    }

    public function contact()
    {
        $contact = Contact::first();
        return view('guest.home.contact', compact('contact'));
    }
}