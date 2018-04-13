package edu.dmacc.spring.individualproject;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class FoodPantryDao {
	
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("SpringMVCIndProject");
	
	public void insertFoodPantry(FoodPantry foodPantryToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(foodPantryToAdd);
		em.getTransaction().commit();
		em.close();
	}

	public List<FoodPantry> getAllFoodPantries() {
		
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select u from FoodPantry u";
		TypedQuery<FoodPantry> typedQuery = em.createQuery(q, FoodPantry.class);
		List<FoodPantry> all = typedQuery.getResultList();
		return all;
	}

}
