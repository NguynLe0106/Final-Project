<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<%@ include file="common/common.jspf" %>
<body>
<%@ include file="common/header.jspf" %>
<!-- Main Content -->
<main class="bg-white min-h-[60vh]">
    <!-- Breadcrumb -->
    <div class="container mx-auto px-6 lg:px-20 pt-20 pb-10">
        <div class="flex items-center gap-3 text-sm">
            <a href="<c:url value='/'/>" class="text-gray-500 hover:text-black">Home</a>
            <span class="text-gray-500">/</span>
            <span class="text-black">404 Error</span>
        </div>
    </div>

    <!-- 404 Content -->
    <div class="container mx-auto px-6 lg:px-20 flex flex-col items-center justify-center text-center py-20">
        <h1 class="font-['Inter'] font-medium text-[110px] leading-[115px] tracking-[3.3px] text-black mb-10">
            404 Not Found
        </h1>
        <p class="text-base leading-6 text-black mb-20">
            Your visited page not found. You may go home page.
        </p>
        <a href="<c:url value='/'/>" 
           class="bg-[#DB4444] text-white font-medium text-base px-12 py-4 rounded hover:bg-[#c93838] transition-colors inline-block">
            Back to home page
        </a>
    </div>
</main>

<!-- Footer -->
<%@ include file="common/footer.jspf" %>

</body>
</html>
