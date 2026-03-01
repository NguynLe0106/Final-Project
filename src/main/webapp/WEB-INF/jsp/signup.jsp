<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<%@ include file="common/common.jspf" %>
<body>
<%@ include file="common/header.jspf" %>

<main class="bg-white min-h-screen flex flex-col">
    <div class="flex flex-col lg:flex-row flex-1">
        <!-- Left panel: illustration -->
        <div class="w-full lg:w-[805px] min-h-[400px] lg:min-h-[781px] bg-[#cbe4e8] flex items-center justify-center rounded-br-md rounded-tr-md overflow-hidden">
            <img src="https://cdn.pixabay.com/photo/2021/02/12/07/03/smartphone-6009259_1280.png" alt="Mobile shopping" class="max-w-full max-h-[500px] lg:max-h-[706px] object-contain opacity-90">
        </div>

        <!-- Right panel: form -->
        <div class="flex-1 flex items-center justify-center px-6 lg:px-16 py-12 lg:py-0">
            <div class="w-full max-w-[400px]">
                <h1 class="text-3xl lg:text-4xl font-medium text-black tracking-wide mb-6" style="font-family: 'Inter', sans-serif; letter-spacing: 0.04em;">
                    Create an account
                </h1>
                <p class="text-base text-black mb-10">Enter your details below</p>

                <form action="<c:url value='/signup'/>" method="post" class="flex flex-col gap-10">
                    <div class="flex flex-col gap-2">
                        <label class="text-base text-black opacity-60">Name</label>
                        <input type="text" name="name" placeholder="Name" required
                               class="bg-transparent border-0 border-b border-black border-opacity-40 py-2 text-base focus:outline-none focus:border-[#DB4444] placeholder-black placeholder-opacity-40">
                    </div>
                    <div class="flex flex-col gap-2">
                        <label class="text-base text-black opacity-60">Email or Phone Number</label>
                        <input type="text" name="emailOrPhone" placeholder="Email or Phone Number" required
                               class="bg-transparent border-0 border-b border-black border-opacity-40 py-2 text-base focus:outline-none focus:border-[#DB4444] placeholder-black placeholder-opacity-40">
                    </div>
                    <div class="flex flex-col gap-2">
                        <label class="text-base text-black opacity-60">Password</label>
                        <input type="password" name="password" placeholder="Password" required
                               class="bg-transparent border-0 border-b border-black border-opacity-40 py-2 text-base focus:outline-none focus:border-[#DB4444] placeholder-black placeholder-opacity-40">
                    </div>

                    <div class="flex flex-col gap-4">
                        <button type="submit" class="w-full bg-[#DB4444] text-white font-medium text-base py-4 px-12 rounded hover:bg-red-600 transition">
                            Create Account
                        </button>

                        <button type="button" class="w-full border border-black border-opacity-40 flex items-center justify-center gap-4 py-4 px-6 rounded hover:bg-gray-50 transition">
                            <svg class="w-6 h-6" viewBox="0 0 24 24">
                                <path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"></path>
                                <path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"></path>
                                <path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"></path>
                                <path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"></path>
                            </svg>
                            <span class="text-base text-black">Sign up with Google</span>
                        </button>
                    </div>
                </form>

                <p class="mt-8 text-base text-black opacity-70">
                    Already have account?
                    <a href="#" class="font-medium underline hover:no-underline">Log in</a>
                </p>
            </div>
        </div>
    </div>
</main>

<%@ include file="common/footer.jspf" %>
</body>
</html>
