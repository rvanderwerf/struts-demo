package org.grails.struts.demo

class Person {

    static constraints = {
        firstName(blank: true,maxSize: 100)
        lastName(blank: true,maxSize: 200)
        email(blank: false, maxSize: 255)
        phone(blank: true, maxSize: 20)
    }

    String firstName
    String lastName
    String email
    String phone
}
