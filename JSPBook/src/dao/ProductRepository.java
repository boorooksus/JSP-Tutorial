package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	public ProductRepository() {
		Product phone = new Product("p1234", "iPhone 6s", 800000);
		phone.setDescription("It's cool");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		
		Product laptop = new Product("p4321", "LG gram", 1800000);
		laptop.setDescription("It's nice");
		laptop.setCategory("Laptop");
		laptop.setManufacturer("LG");
		laptop.setUnitsInStock(500);
		laptop.setCondition("Refurbished");
		
		Product tablet = new Product("p5321", "Galaxy Tab", 1000000);
		tablet.setDescription("It's good");
		tablet.setCategory("tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(800);
		tablet.setCondition("Old");
		
		listOfProducts.add(phone);
		listOfProducts.add(laptop);
		listOfProducts.add(tablet);
		
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		for(int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
			productById = product;
			break;
			}
		}
		return productById;
	}
		
}
