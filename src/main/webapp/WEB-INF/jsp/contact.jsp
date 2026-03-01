<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<%@ include file="common/common.jspf" %>
<body>
<%@ include file="common/header.jspf" %>

<main class="bg-white min-h-screen py-8">
    <div class="container mx-auto px-6 lg:px-20">
        <!-- Breadcrumbs -->
        <nav class="text-sm text-gray-500 mb-8">
            <a href="<c:url value='/'/>" class="hover:text-black">Home</a>
            <span class="mx-1">/</span>
            <span class="text-black font-medium">Contact</span>
        </nav>

        <!-- Contact card: two columns -->
        <div class="bg-white rounded-md shadow-[0_1px_13px_0_rgba(0,0,0,0.05)] flex flex-col lg:flex-row overflow-hidden max-w-5xl mx-auto">
            <!-- Left: Call To Us + Write To US -->
            <div class="lg:w-[340px] shrink-0 p-8 lg:p-10 border-b lg:border-b-0 lg:border-r border-gray-100">
                <div class="space-y-8">
                    <div>
                        <div class="flex items-center gap-4 mb-6">
                            <div class="w-10 h-10 rounded-full bg-[#DB4444] flex items-center justify-center shrink-0">
                                <svg class="w-5 h-5 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"/></svg>
                            </div>
                            <h2 class="text-base font-medium text-black">Call To Us</h2>
                        </div>
                        <p class="text-sm text-black leading-relaxed mb-4">We are available 24/7, 7 days a week.</p>
                        <p class="text-sm text-black">Phone: +8801611112222</p>
                    </div>

                    <div class="border-t border-gray-200 pt-8">
                        <div class="flex items-center gap-4 mb-6">
                            <div class="w-10 h-10 rounded-full bg-[#DB4444] flex items-center justify-center shrink-0">
                                <svg class="w-5 h-5 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/></svg>
                            </div>
                            <h2 class="text-base font-medium text-black">Write To US</h2>
                        </div>
                        <p class="text-sm text-black leading-relaxed mb-4">Fill out our form and we will contact you within 24 hours.</p>
                        <p class="text-sm text-black">Emails: customer@exclusive.com</p>
                        <p class="text-sm text-black">Emails: support@exclusive.com</p>
                    </div>
                </div>
            </div>

            <!-- Right: Contact form -->
            <div class="flex-1 p-8 lg:p-10">
                <form action="<c:url value='/contact'/>" method="post" class="space-y-6">
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                        <input type="text" name="name" placeholder="Your Name *" required
                               class="bg-[#F5F5F5] border-0 rounded px-4 py-3 text-base text-black placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-[#DB4444]">
                        <input type="email" name="email" placeholder="Your Email *" required
                               class="bg-[#F5F5F5] border-0 rounded px-4 py-3 text-base text-black placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-[#DB4444]">
                        <input type="tel" name="phone" placeholder="Your Phone *" required
                               class="bg-[#F5F5F5] border-0 rounded px-4 py-3 text-base text-black placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-[#DB4444]">
                    </div>
                    <div>
                        <textarea name="message" rows="5" placeholder="Your Message"
                                  class="w-full bg-[#F5F5F5] border-0 rounded px-4 py-3 text-base text-black placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-[#DB4444] resize-none"></textarea>
                    </div>
                    <div class="flex justify-end">
                        <button type="submit" class="px-8 py-4 bg-[#DB4444] text-white font-medium rounded hover:bg-red-600 transition">
                            Send Message
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</main>

<%@ include file="common/footer.jspf" %>
</body>
</html>
