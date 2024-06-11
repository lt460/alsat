package com.example.alsat.services;

import com.example.alsat.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID=0;

    {
        products.add(new Product(++ID,"Sony","palying device",5000, "Bishkek","Asan"));
        products.add(new Product(++ID,"PC","office device",10000, "Osh","Azamat"));
    }
    public List<Product> listProduct() { return products;  }

    public void saveProduct(Product product){
        product.setId(++ID);
        products.add(product);
    }
    public void deleteProduct(Long id){
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductById(Long id) {
        for (Product product: products){
            if (product.getId().equals(id)) return product;
        }
        return null;
    }
}
