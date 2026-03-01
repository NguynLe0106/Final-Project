<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<%@ include file="common/common.jspf" %>
<body>
<%@ include file="common/header.jspf" %>

<main class="bg-[#f5f5f5] min-h-screen py-8 lg:py-12">
    <div class="container mx-auto px-6 lg:px-20">
        <!-- Breadcrumbs -->
        <nav class="text-sm text-gray-500 mb-8">
            <a href="<c:url value='/'/>" class="hover:text-black">Home</a>
            <span class="mx-1">/</span>
            <span class="text-black font-medium">My Account</span>
        </nav>

        <div class="bg-white rounded-md shadow-[0_1px_13px_0_rgba(0,0,0,0.05)] flex flex-col lg:flex-row overflow-hidden">
            <!-- Left sidebar -->
            <aside class="lg:w-64 border-b lg:border-b-0 lg:border-r border-gray-200 p-6 lg:p-8 shrink-0">
                <h2 class="text-base font-semibold text-black mb-4">Manage My Account</h2>
                <ul class="space-y-3 mb-8">
                    <li><a href="<c:url value='/account'/>" class="text-[#DB4444] font-medium">My Profile</a></li>
                    <li><a href="#" class="text-black hover:text-[#DB4444]">Address Book</a></li>
                    <li><a href="#" class="text-black hover:text-[#DB4444]">My Payment Options</a></li>
                </ul>
                <h2 class="text-base font-semibold text-black mb-4">My Orders</h2>
                <ul class="space-y-3 mb-8">
                    <li><a href="#" class="text-black hover:text-[#DB4444]">My Returns</a></li>
                    <li><a href="#" class="text-black hover:text-[#DB4444]">My Cancellations</a></li>
                </ul>
                <h2 class="text-base font-semibold text-black mb-4">My WishList</h2>
                <ul class="space-y-3">
                    <li><a href="#" class="text-black hover:text-[#DB4444]">My WishList</a></li>
                </ul>
            </aside>

            <!-- Right: Edit Your Profile form -->
            <div class="flex-1 p-6 lg:p-10">
                <h1 class="text-2xl font-semibold text-[#DB4444] mb-8">Edit Your Profile</h1>

                <form action="<c:url value='/account'/>" method="post" class="space-y-6">
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div class="flex flex-col gap-2">
                            <label for="firstName" class="text-sm font-medium text-black">First Name</label>
                            <input type="text" id="firstName" name="firstName" value="Md"
                                   class="bg-[#F5F5F5] border-0 rounded px-4 py-3 text-base text-black focus:outline-none focus:ring-2 focus:ring-[#DB4444]">
                        </div>
                        <div class="flex flex-col gap-2">
                            <label for="lastName" class="text-sm font-medium text-black">Last Name</label>
                            <input type="text" id="lastName" name="lastName" value="Rimel"
                                   class="bg-[#F5F5F5] border-0 rounded px-4 py-3 text-base text-black focus:outline-none focus:ring-2 focus:ring-[#DB4444]">
                        </div>
                    </div>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div class="flex flex-col gap-2">
                            <label for="email" class="text-sm font-medium text-black">Email</label>
                            <input type="email" id="email" name="email" value="rimell111@gmail.com"
                                   class="bg-[#F5F5F5] border-0 rounded px-4 py-3 text-base text-black focus:outline-none focus:ring-2 focus:ring-[#DB4444]">
                        </div>
                        <div class="flex flex-col gap-2">
                            <label for="address" class="text-sm font-medium text-black">Address</label>
                            <input type="text" id="address" name="address" value="Kingston, 5236, United State"
                                   class="bg-[#F5F5F5] border-0 rounded px-4 py-3 text-base text-black focus:outline-none focus:ring-2 focus:ring-[#DB4444]">
                        </div>
                    </div>

                    <div class="pt-4">
                        <h3 class="text-base font-medium text-black mb-4">Password Changes</h3>
                        <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                            <div class="flex flex-col gap-2">
                                <label for="currentPassword" class="text-sm font-medium text-black">Current Password</label>
                                <input type="password" id="currentPassword" name="currentPassword" placeholder="Current Password"
                                       class="bg-[#F5F5F5] border-0 rounded px-4 py-3 text-base text-black placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-[#DB4444]">
                            </div>
                            <div class="flex flex-col gap-2">
                                <label for="newPassword" class="text-sm font-medium text-black">New Password</label>
                                <input type="password" id="newPassword" name="newPassword" placeholder="New Password"
                                       class="bg-[#F5F5F5] border-0 rounded px-4 py-3 text-base text-black placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-[#DB4444]">
                            </div>
                            <div class="flex flex-col gap-2">
                                <label for="confirmPassword" class="text-sm font-medium text-black">Confirm New Password</label>
                                <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm New Password"
                                       class="bg-[#F5F5F5] border-0 rounded px-4 py-3 text-base text-black placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-[#DB4444]">
                            </div>
                        </div>
                    </div>

                    <div class="flex flex-wrap justify-end gap-4 pt-6">
                        <a href="<c:url value='/account'/>" class="inline-flex items-center justify-center px-8 py-3 border-2 border-black text-black font-medium rounded hover:bg-gray-100 transition">
                            Cancel
                        </a>
                        <button type="submit" class="inline-flex items-center justify-center px-8 py-3 bg-[#DB4444] text-white font-medium rounded hover:bg-red-600 transition">
                            Save Changes
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
