<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<%@ include file="common/common.jspf" %>
<body>
<%@ include file="common/header.jspf" %>

<main class="bg-white font-sans text-black">
    <div class="container mx-auto px-6 lg:px-20 py-8">
        <!-- Breadcrumbs -->
        <nav class="text-sm text-gray-500 mb-8">
            <a href="<c:url value='/account'/>" class="hover:text-black">Account</a>
            <span class="mx-1">/</span>
            <a href="#" class="hover:text-black">Gaming</a>
            <span class="mx-1">/</span>
            <span class="text-black">Havic HV G-92 Gamepad</span>
        </nav>

        <!-- Product layout: gallery + details -->
        <div class="flex flex-col lg:flex-row gap-8 lg:gap-12 mb-20">
            <!-- Left: image gallery -->
            <div class="flex flex-col lg:flex-row gap-4 lg:w-1/2">
                <div class="flex flex-row lg:flex-col gap-2 shrink-0 order-2 lg:order-1">
                    <c:forEach begin="1" end="4" var="i">
                        <button type="button" class="w-16 h-16 lg:w-20 lg:h-20 rounded border-2 border-gray-200 hover:border-[#DB4444] overflow-hidden bg-[#F5F5F5] focus:border-[#DB4444] focus:outline-none">
                            <img src="https://via.placeholder.com/80/eeeeee/666?text=G${i}" alt="View ${i}" class="w-full h-full object-contain">
                        </button>
                    </c:forEach>
                </div>
                <div class="flex-1 bg-[#F5F5F5] rounded flex items-center justify-center min-h-[300px] lg:min-h-[500px] overflow-hidden order-1 lg:order-2">
                    <img id="mainProductImage" src="https://via.placeholder.com/500/ffffff/333?text=Gamepad" alt="Havic HV G-92 Gamepad" class="max-w-full max-h-[400px] lg:max-h-[500px] object-contain">
                </div>
            </div>

            <!-- Right: product details -->
            <div class="lg:w-1/2">
                <h1 class="text-2xl lg:text-3xl font-semibold text-black mb-4">Havic HV G-92 Gamepad</h1>
                <div class="flex flex-wrap items-center gap-3 mb-4">
                    <div class="flex text-yellow-400 text-base">
                        <span>★★★★☆</span>
                    </div>
                    <span class="text-gray-500 text-sm">(150 Reviews)</span>
                    <span class="text-[#00FF66] text-sm font-medium">In Stock</span>
                </div>
                <p class="text-2xl font-semibold text-black mb-6">$192.00</p>
                <p class="text-sm text-gray-600 leading-relaxed mb-6">
                    PlayStation 5 Controller Skin High quality vinyl with air channel adhesive for easy bubble free install & mess free removal Pressure sensitive.
                </p>

                <!-- Colours -->
                <div class="flex items-center gap-3 mb-6">
                    <span class="text-sm font-medium text-black">Colours:</span>
                    <div class="flex gap-2">
                        <button type="button" class="w-6 h-6 rounded-full bg-blue-400 border-2 border-black" aria-label="Blue selected"></button>
                        <button type="button" class="w-6 h-6 rounded-full bg-pink-200 border-2 border-transparent hover:border-gray-300" aria-label="Pink"></button>
                    </div>
                </div>

                <!-- Size -->
                <div class="flex items-center gap-3 mb-6">
                    <span class="text-sm font-medium text-black">Size:</span>
                    <div class="flex flex-wrap gap-2">
                        <button type="button" class="min-w-[3rem] py-2 px-3 rounded border text-sm font-medium bg-white text-black border-gray-300 hover:border-[#DB4444] transition">XS</button>
                        <button type="button" class="min-w-[3rem] py-2 px-3 rounded border text-sm font-medium bg-[#DB4444] text-white border-[#DB4444]">S</button>
                        <button type="button" class="min-w-[3rem] py-2 px-3 rounded border text-sm font-medium bg-white text-black border-gray-300 hover:border-[#DB4444] transition">M</button>
                        <button type="button" class="min-w-[3rem] py-2 px-3 rounded border text-sm font-medium bg-white text-black border-gray-300 hover:border-[#DB4444] transition">L</button>
                        <button type="button" class="min-w-[3rem] py-2 px-3 rounded border text-sm font-medium bg-white text-black border-gray-300 hover:border-[#DB4444] transition">XL</button>
                    </div>
                </div>

                <!-- Quantity + actions -->
                <div class="flex flex-wrap items-center gap-4 mb-8">
                    <div class="flex items-center border border-gray-300 rounded">
                        <button type="button" class="w-10 h-10 flex items-center justify-center bg-gray-100 hover:bg-gray-200 text-black font-medium">−</button>
                        <input type="number" value="2" min="1" class="w-12 h-10 text-center border-0 border-l border-r border-gray-300 text-sm focus:outline-none">
                        <button type="button" class="w-10 h-10 flex items-center justify-center bg-gray-100 hover:bg-gray-200 text-black font-medium">+</button>
                    </div>
                    <a href="#" class="inline-flex items-center justify-center px-8 py-3 bg-[#DB4444] text-white font-medium rounded hover:bg-red-600 transition">Buy Now</a>
                    <button type="button" class="w-12 h-12 rounded border-2 border-[#DB4444] flex items-center justify-center text-[#DB4444] hover:bg-red-50">
                        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg>
                    </button>
                </div>

                <!-- Delivery info -->
                <div class="space-y-4">
                    <div class="border border-gray-200 rounded p-4 flex gap-4">
                        <div class="shrink-0 w-10 h-10 rounded-full bg-gray-100 flex items-center justify-center">
                            <svg class="w-5 h-5 text-black" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16V6a1 1 0 00-1-1H4a1 1 0 00-1 1v10a1 1 0 001 1h1m8-1a1 1 0 01-1 1h-1m-1-1V6a1 1 0 011-1h2a1 1 0 011 1v10m-6 0a1 1 0 001 1h1M5 17a1 1 0 001-1V6M5 17a1 1 0 110-2h14a1 1 0 110 2M5 17v-2h14v2"/></svg>
                        </div>
                        <div>
                            <p class="font-semibold text-black">Free Delivery</p>
                            <p class="text-sm text-gray-500">Enter your postal code for Delivery Availability</p>
                        </div>
                    </div>
                    <div class="border border-gray-200 rounded p-4 flex gap-4">
                        <div class="shrink-0 w-10 h-10 rounded-full bg-gray-100 flex items-center justify-center">
                            <svg class="w-5 h-5 text-black" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15"/></svg>
                        </div>
                        <div>
                            <p class="font-semibold text-black">Return Delivery</p>
                            <p class="text-sm text-gray-500">Free 30 Days Delivery Returns. <a href="#" class="underline hover:no-underline">Details</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Related Item -->
        <section class="border-t border-gray-200 pt-12">
            <div class="flex items-center gap-4 mb-8">
                <div class="w-5 h-10 bg-[#DB4444] rounded"></div>
                <h2 class="text-2xl font-bold text-black">Related Item</h2>
            </div>
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
                <div class="group">
                    <div class="bg-[#F5F5F5] rounded relative aspect-square flex items-center justify-center overflow-hidden">
                        <span class="absolute top-3 left-3 bg-[#DB4444] text-white text-xs px-2 py-1 rounded">-40%</span>
                        <div class="absolute top-3 right-3 flex flex-col gap-2 z-10 opacity-0 group-hover:opacity-100 transition">
                            <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/></svg></button>
                            <button class="w-10 h-10 rounded-full bg-white flex items-center justify-center shadow"><svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg></button>
                        </div>
                        <img src="https://via.placeholder.com/270/8B0000/ffffff?text=Gamepad" alt="Gamepad" class="w-3/4 group-hover:scale-110 transition object-contain">
                        <a href="<c:url value='/product'/>" class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition text-center">Add To Cart</a>
                    </div>
                    <div class="mt-4 space-y-1">
                        <h3 class="font-semibold">HAVIT HV-G92 Gamepad</h3>
                        <p class="text-[#DB4444] font-medium">$120 <span class="text-gray-400 line-through ml-2">$160</span></p>
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
                        <a href="<c:url value='/product'/>" class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition text-center">Add To Cart</a>
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
                        <a href="<c:url value='/product'/>" class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition text-center">Add To Cart</a>
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
                        <img src="https://via.placeholder.com/270/0d7377/ffffff?text=Cooler" alt="Cooler" class="w-3/4 group-hover:scale-110 transition object-contain">
                        <a href="<c:url value='/product'/>" class="absolute bottom-0 w-full bg-black text-white py-3 text-sm font-medium opacity-0 group-hover:opacity-100 transition text-center">Add To Cart</a>
                    </div>
                    <div class="mt-4 space-y-1">
                        <h3 class="font-semibold">RGB liquid CPU Cooler</h3>
                        <p class="text-[#DB4444] font-medium">$160 <span class="text-gray-400 line-through ml-2">$170</span></p>
                        <div class="text-yellow-400 text-sm">★★★★★ <span class="text-gray-400">(65)</span></div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</main>

<%@ include file="common/footer.jspf" %>
</body>
</html>
