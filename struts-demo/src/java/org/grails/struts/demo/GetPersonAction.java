package org.grails.struts.demo;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created with IntelliJ IDEA.
 * User: ryanv
 * Date: 7/20/12
 * Time: 10:00 PM
 * To change this template use File | Settings | File Templates.
 */
public class GetPersonAction extends Action {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        PersonForm personForm = (PersonForm)form;

        WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
        PersonServiceIf personService = (PersonServiceIf)ctx.getBean("personService");
        Person person =  personService.getPersonById((long)personForm.getId());

        personForm.setPerson(person);
        request.setAttribute("personInstance",person);
        return mapping.findForward("success");
    }
}
