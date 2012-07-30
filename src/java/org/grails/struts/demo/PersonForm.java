package org.grails.struts.demo;

import org.apache.struts.action.ActionForm;

/**
 * Created with IntelliJ IDEA.
 * User: ryanv
 * Date: 7/20/12
 * Time: 10:34 PM
 * To change this template use File | Settings | File Templates.
 */
public class PersonForm extends ActionForm {

    String firstName;
    String lastName;
    String email;
    String phone;
    int id;
    Person person;


    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


}
