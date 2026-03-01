<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<%@ include file="common/common.jspf" %>
<body>
<!-- 1. Static Include: Merged at translation time (Fastest) -->
<%@ include file="common/header.jspf" %>

<main class="bg-white font-sans text-black">

    <section class="container mx-auto px-6 lg:px-20 flex flex-col md:flex-row gap-10 pt-10">
        <aside class="w-full md:w-1/4 border-r border-gray-200 pr-4 space-y-4 hidden md:block">
            <ul class="space-y-3 text-sm font-medium">
                <li class="flex justify-between items-center cursor-pointer hover:underline">Woman's Fashion <span>&gt;</span></li>
                <li class="flex justify-between items-center cursor-pointer hover:underline">Men's Fashion <span>&gt;</span></li>
                <li class="cursor-pointer hover:underline">Electronics</li>
                <li class="cursor-pointer hover:underline">Home & Lifestyle</li>
                <li class="cursor-pointer hover:underline">Medicine</li>
                <li class="cursor-pointer hover:underline">Sports & Outdoor</li>
                <li class="cursor-pointer hover:underline">Baby's & Toys</li>
                <li class="cursor-pointer hover:underline">Groceries & Pets</li>
                <li class="cursor-pointer hover:underline">Health & Beauty</li>
            </ul>
        </aside>

        <div class="w-full md:w-3/4 bg-black text-white p-12 flex items-center relative overflow-hidden">
            <div class="z-10 space-y-4">
                <div class="flex items-center gap-4">
                    <i class="fab fa-apple text-4xl"></i>
                    <span class="text-sm">iPhone 14 Pro</span>
                </div>
                <h1 class="text-5xl font-bold leading-tight">Up to 10%<br>off Voucher</h1>
                <a href="#" class="inline-block border-b border-white pb-1 font-medium hover:text-gray-300">Shop Now &rarr;</a>
            </div>
            <img src="<c:url value='/images/iphone.png'/>" alt="iPhone" class="absolute right-0 bottom-0 w-2/3 object-contain opacity-80">
            <div class="absolute bottom-4 left-1/2 -translate-x-1/2 flex gap-2">
                <div class="w-3 h-3 bg-gray-500 rounded-full"></div>
                <div class="w-3 h-3 bg-[#DB4444] rounded-full border-2 border-white"></div>
                <div class="w-3 h-3 bg-gray-500 rounded-full"></div>
            </div>
        </div>
    </section>

    <section class="container mx-auto px-6 lg:px-20 mt-20">
        <div class="flex items-center gap-4 mb-6">
            <div class="w-5 h-10 bg-[#DB4444] rounded"></div>
            <span class="text-[#DB4444] font-bold">Today's</span>
        </div>
        <div class="flex flex-wrap items-end justify-between gap-4 mb-8">
            <h2 class="text-3xl font-bold">Flash Sales</h2>
            <div class="flex items-center gap-6">
                <div class="flex gap-3 text-center">
                    <div><p class="text-[10px] font-bold">Days</p><p class="text-2xl font-bold">03</p></div>
                    <span class="text-[#DB4444] text-2xl leading-none">:</span>
                    <div><p class="text-[10px] font-bold">Hours</p><p class="text-2xl font-bold">23</p></div>
                    <span class="text-[#DB4444] text-2xl leading-none">:</span>
                    <div><p class="text-[10px] font-bold">Minutes</p><p class="text-2xl font-bold">19</p></div>
                    <span class="text-[#DB4444] text-2xl leading-none">:</span>
                    <div><p class="text-[10px] font-bold">Seconds</p><p class="text-2xl font-bold">56</p></div>
                </div>
                <div class="flex gap-2">
                    <button class="w-10 h-10 rounded-full border border-gray-300 flex items-center justify-center hover:bg-gray-100" aria-label="Previous"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"/></svg></button>
                    <button class="w-10 h-10 rounded-full border border-gray-300 flex items-center justify-center hover:bg-gray-100" aria-label="Next"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"/></svg></button>
                </div>
            </div>
        </div>

        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
            <div class="group">
                <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                    <span class="absolute top-3 left-3 bg-[#DB4444] text-white text-xs px-2 py-1 rounded">-30%</span>
                    <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                    </div>
                    <a href="<c:url value='/product'/>" class="block w-3/4"><img src="https://via.placeholder.com/270/8B0000/ffffff?text=Gamepad" alt="Gamepad" class="w-full group-hover:scale-110 transition object-contain"></a>
                    <button class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition">Add To Cart</button>
                </div>
                <div class="mt-4 space-y-1">
                    <a href="<c:url value='/product'/>" class="font-semibold hover:text-[#DB4444]"><h3>HAVIT HV-G92 Gamepad</h3></a>
                    <p class="text-[#DB4444] font-medium">$199 <span class="text-gray-400 line-through ml-2">$360</span></p>
                    <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(88)</span></div>
                </div>
            </div>
            <div class="group">
                <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                    <span class="absolute top-3 left-3 bg-[#DB4444] text-white text-xs px-2 py-1 rounded">-35%</span>
                    <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                    </div>
                    <img src="https://via.placeholder.com/270/1a1a2e/ffffff?text=Keyboard" alt="Keyboard" class="w-3/4 group-hover:scale-110 transition object-contain">
                    <button class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition">Add To Cart</button>
                </div>
                <div class="mt-4 space-y-1">
                    <h3 class="font-semibold">AK-900 Wired Keyboard</h3>
                    <p class="text-[#DB4444] font-medium">$1160 <span class="text-gray-400 line-through ml-2">$1600</span></p>
                    <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(75)</span></div>
                </div>
            </div>
            <div class="group">
                <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                    <span class="absolute top-3 left-3 bg-[#DB4444] text-white text-xs px-2 py-1 rounded">-30%</span>
                    <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                    </div>
                    <img src="https://via.placeholder.com/270/2d2d44/ffffff?text=Monitor" alt="Monitor" class="w-3/4 group-hover:scale-110 transition object-contain">
                    <button class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition">Add To Cart</button>
                </div>
                <div class="mt-4 space-y-1">
                    <h3 class="font-semibold">IPS LCD Gaming Monitor</h3>
                    <p class="text-[#DB4444] font-medium">$370 <span class="text-gray-400 line-through ml-2">$400</span></p>
                    <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(99)</span></div>
                </div>
            </div>
            <div class="group">
                <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                    <span class="absolute top-3 left-3 bg-[#DB4444] text-white text-xs px-2 py-1 rounded">-25%</span>
                    <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                    </div>
                    <img src="https://via.placeholder.com/270/4a4a4a/ffffff?text=Chair" alt="Chair" class="w-3/4 group-hover:scale-110 transition object-contain">
                    <button class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition">Add To Cart</button>
                </div>
                <div class="mt-4 space-y-1">
                    <h3 class="font-semibold">S-Series Comfort Chair</h3>
                    <p class="text-[#DB4444] font-medium">$375 <span class="text-gray-400 line-through ml-2">$400</span></p>
                    <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(99)</span></div>
                </div>
            </div>
        </div>
        <div class="text-center mt-12">
            <button class="bg-[#DB4444] text-white px-10 py-4 rounded hover:bg-red-600 transition">View All Products</button>
        </div>
    </section>

    <section class="container mx-auto px-6 lg:px-20 mt-20 border-t border-gray-200 pt-20">
        <div class="flex flex-wrap items-center justify-between gap-4 mb-6">
            <div class="flex items-center gap-4">
                <div class="w-5 h-10 bg-[#DB4444] rounded"></div>
                <span class="text-[#DB4444] font-bold">Categories</span>
            </div>
            <div class="flex gap-2">
                <button class="w-10 h-10 rounded-full border border-gray-300 flex items-center justify-center hover:bg-gray-100" aria-label="Previous"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"/></svg></button>
                <button class="w-10 h-10 rounded-full border border-gray-300 flex items-center justify-center hover:bg-gray-100" aria-label="Next"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"/></svg></button>
            </div>
        </div>
        <h2 class="text-3xl font-bold mb-10">Browse By Category</h2>
        <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-6">
            <div class="border border-gray-200 rounded flex flex-col items-center justify-center p-8 hover:bg-[#DB4444] hover:text-white hover:border-[#DB4444] transition cursor-pointer group">
                <i class="fas fa-mobile-alt text-4xl mb-4 text-gray-400 group-hover:text-white"></i>
                <p class="font-medium">Phones</p>
            </div>
            <div class="border border-gray-200 rounded flex flex-col items-center justify-center p-8 hover:bg-[#DB4444] hover:text-white hover:border-[#DB4444] transition cursor-pointer group">
                <i class="fas fa-desktop text-4xl mb-4 text-gray-400 group-hover:text-white"></i>
                <p class="font-medium">Computers</p>
            </div>
            <div class="border border-gray-200 rounded flex flex-col items-center justify-center p-8 hover:bg-[#DB4444] hover:text-white hover:border-[#DB4444] transition cursor-pointer group">
                <i class="fas fa-clock text-4xl mb-4 text-gray-400 group-hover:text-white"></i>
                <p class="font-medium">SmartWatch</p>
            </div>
            <div class="border border-[#DB4444] rounded flex flex-col items-center justify-center p-8 bg-[#DB4444] text-white cursor-pointer">
                <i class="fas fa-camera text-4xl mb-4"></i>
                <p class="font-medium">Camera</p>
            </div>
            <div class="border border-gray-200 rounded flex flex-col items-center justify-center p-8 hover:bg-[#DB4444] hover:text-white hover:border-[#DB4444] transition cursor-pointer group">
                <i class="fas fa-headphones text-4xl mb-4 text-gray-400 group-hover:text-white"></i>
                <p class="font-medium">HeadPhones</p>
            </div>
            <div class="border border-gray-200 rounded flex flex-col items-center justify-center p-8 hover:bg-[#DB4444] hover:text-white hover:border-[#DB4444] transition cursor-pointer group">
                <i class="fas fa-gamepad text-4xl mb-4 text-gray-400 group-hover:text-white"></i>
                <p class="font-medium">Gaming</p>
            </div>
        </div>
    </section>

    <section class="container mx-auto px-6 lg:px-20 mt-20">
        <div class="flex flex-wrap items-center justify-between gap-4 mb-8">
            <div class="flex items-center gap-4">
                <div class="w-5 h-10 bg-[#DB4444] rounded"></div>
                <span class="text-[#DB4444] font-bold">This Month</span>
            </div>
            <h2 class="text-3xl font-bold">Best Selling Products</h2>
            <a href="#" class="bg-[#DB4444] text-white px-8 py-3 rounded hover:bg-red-600 transition font-medium">View All</a>
        </div>
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
            <div class="group">
                <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                    <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                    </div>
                    <img src="https://via.placeholder.com/270/e8b4b8/5c3a3a?text=Coat" alt="Coat" class="w-3/4 group-hover:scale-110 transition object-contain">
                    <button class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition">Add To Cart</button>
                </div>
                <div class="mt-4 space-y-1">
                    <h3 class="font-semibold">The north coat</h3>
                    <p class="text-[#DB4444] font-medium">$250 <span class="text-gray-400 line-through ml-2">$360</span></p>
                    <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(65)</span></div>
                </div>
            </div>
            <div class="group">
                <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                    <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                    </div>
                    <img src="https://via.placeholder.com/270/8B4513/ffffff?text=Bag" alt="Bag" class="w-3/4 group-hover:scale-110 transition object-contain">
                    <button class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition">Add To Cart</button>
                </div>
                <div class="mt-4 space-y-1">
                    <h3 class="font-semibold">Gucci duffle bag</h3>
                    <p class="text-[#DB4444] font-medium">$960 <span class="text-gray-400 line-through ml-2">$1160</span></p>
                    <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(65)</span></div>
                </div>
            </div>
            <div class="group">
                <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                    <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                    </div>
                    <img src="https://via.placeholder.com/270/0d7377/ffffff?text=Cooler" alt="Cooler" class="w-3/4 group-hover:scale-110 transition object-contain">
                    <button class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition">Add To Cart</button>
                </div>
                <div class="mt-4 space-y-1">
                    <h3 class="font-semibold">RGB liquid CPU Cooler</h3>
                    <p class="text-[#DB4444] font-medium">$160 <span class="text-gray-400 line-through ml-2">$170</span></p>
                    <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(65)</span></div>
                </div>
            </div>
            <div class="group">
                <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                    <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                    </div>
                    <img src="https://via.placeholder.com/270/5d4e37/ffffff?text=BookShelf" alt="BookShelf" class="w-3/4 group-hover:scale-110 transition object-contain">
                    <button class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition">Add To Cart</button>
                </div>
                <div class="mt-4 space-y-1">
                    <h3 class="font-semibold">Small BookShelf</h3>
                    <p class="text-[#DB4444] font-medium">$360 <span class="text-gray-400 line-through ml-2">$470</span></p>
                    <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(65)</span></div>
                </div>
            </div>
        </div>
    </section>

    <section class="container mx-auto px-6 lg:px-20 mt-20">
        <div class="bg-black text-white p-12 flex flex-col md:flex-row items-center justify-between rounded">
            <div class="space-y-6">
                <p class="text-[#00FF66] font-bold">Categories</p>
                <h2 class="text-5xl font-bold leading-tight">Enhance Your<br>Music Experience</h2>
                <div class="flex gap-4">
                    <div class="bg-white text-black rounded-full w-14 h-14 flex flex-col items-center justify-center text-[10px] font-bold"><span>23</span>Hours</div>
                    <div class="bg-white text-black rounded-full w-14 h-14 flex flex-col items-center justify-center text-[10px] font-bold"><span>05</span>Days</div>
                    <div class="bg-white text-black rounded-full w-14 h-14 flex flex-col items-center justify-center text-[10px] font-bold"><span>59</span>Min</div>
                </div>
                <button class="bg-[#00FF66] text-white px-10 py-4 rounded hover:bg-green-500 transition font-medium">Buy Now!</button>
            </div>
            <img src="<c:url value='/images/big-speaker.png'/>"  alt="Speaker" class="w-1/2 drop-shadow-[0_0_50px_rgba(255,255,255,0.3)]">
        </div>
    </section>

    <section class="container mx-auto px-6 lg:px-20 my-20">
        <div class="flex flex-wrap items-center justify-between gap-4 mb-8">
            <div class="flex items-center gap-4">
                <div class="w-5 h-10 bg-[#DB4444] rounded"></div>
                <span class="text-[#DB4444] font-bold">Our Products</span>
            </div>
            <h2 class="text-3xl font-bold">Explore Our Products</h2>
            <div class="flex gap-2">
                <button class="w-10 h-10 rounded-full border border-gray-300 flex items-center justify-center hover:bg-gray-100" aria-label="Previous"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"/></svg></button>
                <button class="w-10 h-10 rounded-full border border-gray-300 flex items-center justify-center hover:bg-gray-100" aria-label="Next"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"/></svg></button>
            </div>
        </div>
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
            <div class="group">
                <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                    <span class="absolute top-3 left-3 bg-[#00FF66] text-white text-xs px-2 py-1 rounded">NEW</span>
                    <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                    </div>
                    <img src="https://via.placeholder.com/270/228B22/ffffff?text=Dog+Food" alt="Dog Food" class="w-3/4 group-hover:scale-110 transition object-contain">
                    <button class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition">Add To Cart</button>
                </div>
                <div class="mt-4 space-y-1">
                    <h3 class="font-semibold">Breed Dry Dog Food</h3>
                    <p class="text-[#DB4444] font-medium">$100</p>
                    <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(35)</span></div>
                </div>
            </div>
            <div class="group">
                <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                    <span class="absolute top-3 left-3 bg-[#00FF66] text-white text-xs px-2 py-1 rounded">NEW</span>
                    <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                    </div>
                    <img src="https://via.placeholder.com/270/36454f/ffffff?text=Camera" alt="Camera" class="w-3/4 group-hover:scale-110 transition object-contain">
                    <button class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition">Add To Cart</button>
                </div>
                <div class="mt-4 space-y-1">
                    <h3 class="font-semibold">CANON EOS DSLR Camera</h3>
                    <p class="text-[#DB4444] font-medium">$360 <span class="text-gray-400 line-through ml-2">$499</span></p>
                    <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(95)</span></div>
                </div>
            </div>
            <div class="group">
                <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                    <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                    </div>
                    <img src="https://via.placeholder.com/270/1a1a2e/ffffff?text=Laptop" alt="Laptop" class="w-3/4 group-hover:scale-110 transition object-contain">
                    <button class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition">Add To Cart</button>
                </div>
                <div class="mt-4 space-y-1">
                    <h3 class="font-semibold">ASUS ROG Strix G15</h3>
                    <p class="text-[#DB4444] font-medium">$700 <span class="text-gray-400 line-through ml-2">$900</span></p>
                    <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(145)</span></div>
                </div>
            </div>
            <div class="group">
                <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                    <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                    </div>
                    <img src="https://via.placeholder.com/270/f5e6d3/5c4a3a?text=Skincare" alt="Skincare" class="w-3/4 group-hover:scale-110 transition object-contain">
                    <button class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition">Add To Cart</button>
                </div>
                <div class="mt-4 space-y-1">
                    <h3 class="font-semibold">Curology Product Set</h3>
                    <p class="text-[#DB4444] font-medium">$500</p>
                    <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(145)</span></div>
                </div>
            </div>
            <div class="group">
                <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                    <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                    </div>
                    <img src="https://via.placeholder.com/270/DB4444/ffffff?text=Car" alt="Kids Car" class="w-3/4 group-hover:scale-110 transition object-contain">
                    <button class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition">Add To Cart</button>
                </div>
                <div class="mt-4 space-y-1">
                    <h3 class="font-semibold">Kids electric car</h3>
                    <p class="text-[#DB4444] font-medium">$960 <span class="text-gray-400 line-through ml-2">$1160</span></p>
                    <div class="flex items-center gap-2 mt-1">
                        <span class="w-4 h-4 rounded-full bg-[#DB4444] border border-gray-300"></span>
                        <span class="w-4 h-4 rounded-full bg-black border border-gray-300"></span>
                    </div>
                    <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(65)</span></div>
                </div>
            </div>
            <div class="group">
                <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                    <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                    </div>
                    <img src="https://via.placeholder.com/270/FFD700/5c4a00?text=Shoes" alt="Cleats" class="w-3/4 group-hover:scale-110 transition object-contain">
                    <button class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition">Add To Cart</button>
                </div>
                <div class="mt-4 space-y-1">
                    <h3 class="font-semibold">Jr. Zoom Soccer Cleats</h3>
                    <p class="text-[#DB4444] font-medium">$1160 <span class="text-gray-400 line-through ml-2">$1360</span></p>
                    <div class="flex items-center gap-2 mt-1">
                        <span class="w-4 h-4 rounded-full bg-yellow-400 border border-gray-300"></span>
                        <span class="w-4 h-4 rounded-full bg-[#DB4444] border border-gray-300"></span>
                    </div>
                    <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(35)</span></div>
                </div>
            </div>
            <div class="group">
                <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                    <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                    </div>
                    <img src="https://via.placeholder.com/270/2d2d2d/ffffff?text=Gamepad" alt="Gamepad" class="w-3/4 group-hover:scale-110 transition object-contain">
                    <button class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition">Add To Cart</button>
                </div>
                <div class="mt-4 space-y-1">
                    <h3 class="font-semibold">GP11 Shooter USB Gamepad</h3>
                    <p class="text-[#DB4444] font-medium">$1160 <span class="text-gray-400 line-through ml-2">$1360</span></p>
                    <div class="flex items-center gap-2 mt-1">
                        <span class="w-4 h-4 rounded-full bg-black border border-gray-300"></span>
                        <span class="w-4 h-4 rounded-full bg-[#DB4444] border border-gray-300"></span>
                    </div>
                    <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(55)</span></div>
                </div>
            </div>
            <div class="group">
                <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                    <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                        <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                    </div>
                    <img src="https://via.placeholder.com/270/228B22/ffffff?text=Jacket" alt="Jacket" class="w-3/4 group-hover:scale-110 transition object-contain">
                    <button class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition">Add To Cart</button>
                </div>
                <div class="mt-4 space-y-1">
                    <h3 class="font-semibold">Quilted Satin Jacket</h3>
                    <p class="text-[#DB4444] font-medium">$660 <span class="text-gray-400 line-through ml-2">$770</span></p>
                    <div class="flex items-center gap-2 mt-1">
                        <span class="w-4 h-4 rounded-full bg-green-700 border border-gray-300"></span>
                        <span class="w-4 h-4 rounded-full bg-[#DB4444] border border-gray-300"></span>
                    </div>
                    <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(55)</span></div>
                </div>
            </div>
        </div>
        <div class="text-center mt-12">
            <button class="bg-[#DB4444] text-white px-10 py-4 rounded hover:bg-red-600 transition font-medium">View All Products</button>
        </div>
    </section>

    <section class="container mx-auto px-6 lg:px-20 my-20">
        <div class="flex items-center gap-4 mb-6">
            <div class="w-5 h-10 bg-[#DB4444] rounded"></div>
            <span class="text-[#DB4444] font-bold">Featured</span>
        </div>
        <h2 class="text-3xl font-bold mb-10">New Arrival</h2>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 h-[600px]">
            <div class="bg-black rounded relative group overflow-hidden">
                <img src="<c:url value='/images/ps5.png'/>"  class="absolute bottom-0 w-full h-auto object-cover opacity-80">
                <div class="absolute bottom-8 left-8 text-white space-y-2">
                    <h3 class="text-2xl font-bold">PlayStation 5</h3>
                    <p class="text-sm text-gray-300">Black and White version of the PS5 <br> coming out on sale.</p>
                    <a href="#" class="inline-block border-b border-white font-medium">Shop Now</a>
                </div>
            </div>

            <div class="grid grid-rows-2 gap-6">
                <div class="bg-[#0D0D0D] rounded relative overflow-hidden">
                    <img src="<c:url value='/images/women.png'/>" alt="Logo" class="absolute right-0 bottom-0 h-full opacity-80">
                    <div class="absolute bottom-8 left-8 text-white space-y-2">
                        <h3 class="text-2xl font-bold">Women's Collections</h3>
                        <p class="text-sm text-gray-300">Featured woman collections that <br> give you another vibe.</p>
                        <a href="#" class="inline-block border-b border-white font-medium">Shop Now</a>
                    </div>
                </div>
                <div class="grid grid-cols-2 gap-6">
                    <div class="bg-black rounded relative">
                        <img src="<c:url value='/images/speaker.png'/>" alt="Logo" class="absolute right-0 bottom-0 h-full opacity-80">
                        <div class="absolute bottom-4 left-4 text-white">
                            <h4 class="font-bold">Speakers</h4>
                            <a href="#" class="text-xs border-b border-white">Shop Now</a>
                        </div>
                    </div>
                    <div class="bg-black rounded relative">
                        <img src="<c:url value='/images/perfume.png'/>" alt="Logo" class="absolute right-0 bottom-0 h-full opacity-80">
                        <div class="absolute bottom-4 left-4 text-white">
                            <h4 class="font-bold">Perfume</h4>
                            <a href="#" class="text-xs border-b border-white">Shop Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="container mx-auto px-6 lg:px-20 py-20 grid grid-cols-1 md:grid-cols-3 gap-10 text-center">
        <div class="space-y-4">
            <div class="bg-gray-300 rounded-full w-20 h-20 flex items-center justify-center mx-auto">
                <div class="bg-black text-white rounded-full w-14 h-14 flex items-center justify-center">
                    <i class="fas fa-truck text-2xl"></i>
                </div>
            </div>
            <h3 class="font-bold text-xl">FREE AND FAST DELIVERY</h3>
            <p class="text-sm">Free delivery for all orders over $140</p>
        </div>
        <div class="space-y-4">
            <div class="bg-gray-300 rounded-full w-20 h-20 flex items-center justify-center mx-auto">
                <div class="bg-black text-white rounded-full w-14 h-14 flex items-center justify-center">
                    <i class="fas fa-headphones-alt text-2xl"></i>
                </div>
            </div>
            <h3 class="font-bold text-xl">24/7 CUSTOMER SERVICE</h3>
            <p class="text-sm">Friendly 24/7 customer support</p>
        </div>
        <div class="space-y-4">
            <div class="bg-gray-300 rounded-full w-20 h-20 flex items-center justify-center mx-auto">
                <div class="bg-black text-white rounded-full w-14 h-14 flex items-center justify-center">
                    <i class="fas fa-shield-alt text-2xl"></i>
                </div>
            </div>
            <h3 class="font-bold text-xl">MONEY BACK GUARANTEE</h3>
            <p class="text-sm">We return money within 30 days</p>
        </div>
    </section>

</main>
<!-- Static Include for footer -->
<%@ include file="common/footer.jspf" %>

</body>
</html>