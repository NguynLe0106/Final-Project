<%@ page contentType="text/html;charset=UTF-8" %>
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
                    Log in to Exclusive
                </h1>
                <p class="text-base text-black mb-10">Enter your details below</p>

                <form action="<c:url value='/user/signup'/>" method="post" class="flex flex-col gap-10">
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
                    </div>
                </form>

                <p class="mt-8 text-base text-black opacity-70">
                    Forget password?
                    <a href="#" class="font-medium underline hover:no-underline">Log in</a>
                </p>
            </div>
        </div>
    </div>
</main>
<%@ include file="common/footer.jspf" %>
</body>
</html>
