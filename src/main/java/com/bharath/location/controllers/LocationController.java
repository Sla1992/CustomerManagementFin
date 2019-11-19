package com.bharath.location.controllers;
import com.bharath.location.entities.Address;
import com.bharath.location.entities.Contact;
import com.bharath.location.entities.Customer;
import com.bharath.location.service.LocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class LocationController {

    @Autowired
    LocationService service;

    @RequestMapping("/showCreate")
    public String showCreate(){
        return "createLocation";
    }

    @RequestMapping("/saveLoc")
    public String saveLocation(@ModelAttribute("customer") Customer customer,
                               @ModelAttribute("address")  Address address,
                               @ModelAttribute("contact")  Contact contact, ModelMap modelMap){
        Customer customerSaved = service.saveLocation(customer);
        long fkCustomer = customerSaved.getId();
        address.setFkCostumer(fkCustomer);
        service.saveAddress(address);
        contact.setFkcostumer(fkCustomer);
        service.saveContact(contact);
        String msg = "Customer saved with id " + customerSaved.getId();
        modelMap.addAttribute("msg", msg);
        return "createLocation";
    }

    @RequestMapping("/displayCustomers")
    public String displayLocations(){
        return "displaycustomers";
    }

    @RequestMapping("deleteLocations")
    public String deleteLocation(@RequestParam("id") long id, ModelMap modelMap){
        Customer customer = service.getLocationById(id);
        customer.setId(id);
        service.deleteLocation(customer);
        return "displaycustomers";
    }

    @RequestMapping("/showUpdate")
    public String showUpdate(@RequestParam("id") long id, ModelMap modelMap, ModelMap modelMap1, ModelMap modelMap2) {
        Customer customer = service.getLocationById(id);
        Address address = service.getAddressByfk(id);
        Contact contact = service.getContactByfk(id);
        modelMap.addAttribute("customer", customer);
        modelMap1.addAttribute("contact", contact);
        modelMap2.addAttribute("address", address);
        return "updateLocations";
    }

    @RequestMapping("/updateLoc")
    public String saveLocations(
                                @ModelAttribute("customer") Customer customer,
                                @ModelAttribute("address") Address address,
                                @ModelAttribute("contact") Contact contact){
        service.updateLocation(customer);
        service.saveAddress(address);
        service.saveContact(contact);
        return "displayLocations";
    }
}
