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
            <a href="${pageContext.request.contextPath}/" class="hover:text-black">Home</a>
            <span class="mx-1">/</span>
            <span class="text-black font-medium">Cart</span>
        </nav>
            <!-- Cart table -->
            <div class="border border-gray-200 rounded-md overflow-hidden mb-6">
                <div class="overflow-x-auto">
                    <table class="w-full text-left">
                        <thead class="bg-[#F5F5F5] border-b border-gray-200">
                            <tr>
                                <th class="py-4 px-4 text-sm font-medium text-black">Product</th>
                                <th class="py-4 px-4 text-sm font-medium text-black">Price</th>
                                <th class="py-4 px-4 text-sm font-medium text-black">Quantity</th>
                                <th class="py-4 px-4 text-sm font-medium text-black">Subtotal</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:choose>
                                <c:when test="${empty lines}">
                                    <tr>
                                        <td colspan="4" class="py-10 px-4 text-center text-gray-500">
                                            Your cart is empty.
                                        </td>
                                    </tr>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach var="line" items="${lines}">
                                        <tr class="border-b border-gray-200">
                                            <td class="py-4 px-4">
                                                <div class="flex items-center gap-4">
                                                    <div class="relative w-20 h-20 rounded bg-[#F5F5F5] flex items-center justify-center shrink-0">
                                                        <form action="<c:url value='/cart/remove'/>" method="post">
                                                            <input type="hidden" name="productId" value="${line.product.id}" />
                                                            <button type="submit" class="absolute -top-1 -left-1 w-6 h-6 rounded-full bg-[#DB4444] text-white flex items-center justify-center text-xs hover:bg-red-600" aria-label="Remove">×</button>
                                                        </form>
                                                        <img src="https://via.placeholder.com/80/2d2d44/ffffff?text=Item" alt="${line.product.productName}" class="w-14 h-14 object-contain">
                                                    </div>
                                                    <span class="font-medium text-black">${line.product.productName}</span>
                                                </div>
                                            </td>
                                            <td class="py-4 px-4 text-black">$${line.product.price}</td>
                                            <td class="py-4 px-4">
                                                <form action="<c:url value='/cart/update'/>" method="post" class="flex items-center gap-2">
                                                    <input type="hidden" name="productId" value="${line.product.id}" />
                                                    <input type="number" name="quantity" value="${line.quantity}" min="0" class="w-20 h-9 text-center border border-gray-300 rounded text-sm focus:outline-none" />
                                                    <button type="submit" class="px-3 py-2 border border-black text-black text-sm font-medium rounded hover:bg-gray-100 transition">Update</button>
                                                </form>
                                            </td>
                                            <td class="py-4 px-4 font-medium text-black">$${line.subtotal}</td>
                                        </tr>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Action buttons -->
            <div class="flex flex-wrap gap-4 mb-8">
                <a href="<c:url value='/'/>" class="inline-flex items-center justify-center px-8 py-3 border-2 border-black text-black font-medium rounded hover:bg-gray-100 transition">Return To Shop</a>
                <a href="<c:url value='/cart/view'/>" class="inline-flex items-center justify-center px-8 py-3 border-2 border-black text-black font-medium rounded hover:bg-gray-100 transition">Refresh Cart</a>
                <form action="<c:url value='/cart/clear'/>" method="post">
                    <button type="submit" class="inline-flex items-center justify-center px-8 py-3 border-2 border-black text-black font-medium rounded hover:bg-gray-100 transition">Clear Cart</button>
                </form>
            </div>

            <!-- Coupon + Cart Total -->
            <div class="flex flex-col lg:flex-row gap-8 lg:gap-12">
                <div class="flex-1">
                    <form action="#" method="post" class="flex flex-col sm:flex-row gap-2 max-w-md">
                        <input type="text" name="coupon" placeholder="Coupon Code" class="flex-1 bg-white border border-gray-300 rounded px-4 py-3 text-base placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-[#DB4444] focus:border-transparent">
                        <button type="submit" class="px-8 py-3 bg-[#DB4444] text-white font-medium rounded hover:bg-red-600 transition whitespace-nowrap">Apply Coupon</button>
                    </form>
                </div>
                <div class="lg:w-[400px] shrink-0">
                    <div class="border-2 border-black rounded-md p-6">
                        <h2 class="text-xl font-semibold text-black mb-6">Cart Total</h2>
                        <div class="space-y-3 mb-6">
                            <div class="flex justify-between text-base">
                                <span class="text-black">Subtotal:</span>
                                <span class="font-medium text-black">$${subtotal}</span>
                            </div>
                            <div class="flex justify-between text-base">
                                <span class="text-black">Shipping:</span>
                                <span class="font-medium text-black">Free</span>
                            </div>
                            <div class="flex justify-between text-base pt-3 border-t border-gray-200">
                                <span class="font-semibold text-black">Total:</span>
                                <span class="font-semibold text-black">$${total}</span>
                            </div>
                        </div>
                        <a href="#" class="block w-full text-center px-8 py-4 bg-[#DB4444] text-white font-medium rounded hover:bg-red-600 transition">Proceed to checkout</a>
                    </div>
                </div>
            </div>
    </div>
</main>

<%@ include file="common/footer.jspf" %>
</body>
</html>
