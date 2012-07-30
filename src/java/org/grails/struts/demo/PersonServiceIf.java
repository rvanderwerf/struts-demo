package org.grails.struts.demo;

import java.util.Collection;

/**
 * Created with IntelliJ IDEA.
 * User: ryanv
 * Date: 7/22/12
 * Time: 10:10 AM
 * To change this template use File | Settings | File Templates.
 */
public interface PersonServiceIf {

    public Collection getPersonList();

    Person getPersonById(long personId);

    void savePerson(Person person);

    Person createPerson();

}
