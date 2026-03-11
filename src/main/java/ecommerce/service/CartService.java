package ecommerce.service;

import ecommerce.model.AbandonedCartDto;
import ecommerce.model.CartLineDto;

import java.util.List;
import java.util.UUID;

public interface CartService
{
    void addItem(String sessionId, UUID productId, int quantity);
    void updateItem(String sessionId, UUID productId, int quantity);
    void removeItem(String sessionId, UUID productId);
    void clear(String sessionId);

    List<CartLineDto> getLines(String sessionId);
    double getSubtotal(String sessionId);
    int getItemCount(String sessionId);

    List<AbandonedCartDto> searchAbandonedCarts(int minAgeMinutes, int limit);
}

