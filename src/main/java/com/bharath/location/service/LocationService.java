package com.bharath.location.service;

import com.bharath.location.entities.Address;
import com.bharath.location.entities.Contact;
import com.bharath.location.entities.Customer;

import java.util.List;

public interface LocationService {
    Customer saveLocation(Customer customer);
    Customer updateLocation(Customer customer);
    void deleteLocation(Customer customer);
    Customer getLocationById(long id);
    List<Customer> getAllLocations();


    Address saveAddress(Address address);
    Address updateAddress(Address address);
    void deleteAddress(Address address);
    Address getAddressById(long id);
    Address getAddressByfk( long id);
    List<Address> getAllAddress();

    Contact saveContact(Contact contact);
    Contact updateContact(Contact contact);
    void deleteContact(Contact contact);
    Contact getContactById(long id);
    Contact getContactByfk( long id);
    List<Contact> getAllContact();
}
