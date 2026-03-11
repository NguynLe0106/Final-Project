<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<%@ include file="common/common.jspf" %>
<body>
<%@ include file="common/header.jspf" %>

<main class="bg-white min-h-screen py-8">
    <div class="container mx-auto px-6 lg:px-20">
        <nav class="text-sm text-gray-500 mb-8">
            <a href="${pageContext.request.contextPath}/" class="hover:text-black">Home</a>
            <span class="mx-1">/</span>
            <span class="text-black font-medium">Abandoned Carts</span>
        </nav>

        <div class="flex flex-col gap-4 mb-6">
            <h1 class="text-2xl font-semibold text-black">Search abandoned carts</h1>

            <form action="<c:url value='/cart/abandoned'/>" method="get" class="flex flex-col sm:flex-row gap-3 items-start sm:items-end">
                <div class="flex flex-col">
                    <label class="text-sm text-gray-700 mb-1">Min age (minutes)</label>
                    <input type="number" min="1" name="minAgeMinutes" value="${minAgeMinutes}" class="w-56 bg-white border border-gray-300 rounded px-4 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-black">
                </div>
                <div class="flex flex-col">
                    <label class="text-sm text-gray-700 mb-1">Limit</label>
                    <input type="number" min="1" max="500" name="limit" value="${limit}" class="w-40 bg-white border border-gray-300 rounded px-4 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-black">
                </div>
                <button type="submit" class="px-6 py-2 border-2 border-black text-black font-medium rounded hover:bg-gray-100 transition">Search</button>
            </form>
        </div>

        <div class="border border-gray-200 rounded-md overflow-hidden">
            <div class="overflow-x-auto">
                <table class="w-full text-left">
                    <thead class="bg-[#F5F5F5] border-b border-gray-200">
                    <tr>
                        <th class="py-4 px-4 text-sm font-medium text-black">Cart ID</th>
                        <th class="py-4 px-4 text-sm font-medium text-black">Session</th>
                        <th class="py-4 px-4 text-sm font-medium text-black">Last updated</th>
                        <th class="py-4 px-4 text-sm font-medium text-black">Items</th>
                        <th class="py-4 px-4 text-sm font-medium text-black">Subtotal</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:choose>
                        <c:when test="${empty abandonedCarts}">
                            <tr>
                                <td colspan="5" class="py-10 px-4 text-center text-gray-500">
                                    No abandoned carts found for the given criteria.
                                </td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="c" items="${abandonedCarts}">
                                <tr class="border-b border-gray-200">
                                    <td class="py-4 px-4 text-sm text-black font-mono">${c.cartId}</td>
                                    <td class="py-4 px-4 text-sm text-gray-700 font-mono">${c.sessionId}</td>
                                    <td class="py-4 px-4 text-sm text-gray-700">${c.lastUpdatedAt}</td>
                                    <td class="py-4 px-4 text-sm text-black">${c.itemCount}</td>
                                    <td class="py-4 px-4 text-sm text-black font-medium">$${c.subtotal}</td>
                                </tr>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>

<%@ include file="common/footer.jspf" %>
</body>
</html>

