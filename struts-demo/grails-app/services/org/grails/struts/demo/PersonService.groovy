package org.grails.struts.demo

class PersonService implements PersonServiceIf {




    public Collection getPersonList()  {
           return Person.list()
    }

    Person getPersonById(long personId) {
           return Person.get(personId)
    }

    void savePerson(Person person) {

        person.save(flush: true)

    }

    Person createPerson() {
        return new Person()
    }


}
