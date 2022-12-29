package com.example.demo.services;

import com.example.demo.models.Product;
import com.example.demo.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.io.IOException;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;

    public List<Product> listProducts(String title){
        if (title != null) productRepository.findByTitle(title);
        return productRepository.findAll();
    }

    public void saveProduct(Product product
    )
            throws IOException {
        log.info("Saving new Product. Title: {}; Author: {}", product.getTitle(), product.getAuthor());
        Product productFromDb = productRepository.save(product);
        productRepository.save(product);
    }


    public void deleteProduct(Long id){
        productRepository.deleteById(id);
    }
    public Product getProductById(Long id){

        return productRepository.findById(id).orElse(null);
    }

    public void editProduct2(Product product,Long id) throws IOException {


        Product editproduct=getProductById(id);
        editproduct.setTitle(product.getTitle());
        editproduct.setPrice(product.getPrice());
        editproduct.setAuthor(product.getAuthor());
        editproduct.setCity(product.getCity());
        editproduct.setDescription(product.getDescription());


        log.info("edit new Product. Title: {}; Author: {}", product.getTitle(), product.getAuthor());
        Product productFromDb = productRepository.save(editproduct);
        productRepository.save(editproduct);
    }
}
