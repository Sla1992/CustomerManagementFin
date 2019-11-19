package com.bharath.location.controllers;

import com.bharath.location.entities.Customer;
import com.bharath.location.repos.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/locations")
public class LocationRESTController {

    @Autowired
    CustomerRepository customerRepository;

    @GetMapping
    public List<Customer> getLocation(){
       return customerRepository.findAll();
    }

    @PostMapping
    public Customer createLocation(@RequestBody Customer customer){
        return customerRepository.save(customer);
    }

    @PutMapping
    public Customer updateLocation(@RequestBody Customer customer){
        return customerRepository.save(customer);
    }

    @DeleteMapping
    public void deleteLocation(@RequestBody Customer customer){
        customerRepository.delete(customer);
    }

    @GetMapping("/{id}")
    public Optional<Customer> getLocation(@PathVariable("id") long id){
        return customerRepository.findById(id);
    }
}
