package ecommerce.model;

import ecommerce.entity.Product;

import java.io.Serializable;

public record CartLineDto(Product product, int quantity, double subtotal) implements Serializable
{
}

