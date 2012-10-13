package org.grails.struts.demo;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Collection;

/**
 * Created with IntelliJ IDEA.
 * User: ryanv
 * Date: 7/20/12
 * Time: 10:00 PM
 * To change this template use File | Settings | File Templates.
 */
public class ListPersonAction extends Action {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
        PersonServiceIf personService = (PersonServiceIf)ctx.getBean("personService");
        PersonForm personForm = (PersonForm)form;
        Collection people = personService.getPersonList();
        request.setAttribute("peopleList",people);

        return mapping.findForward("success");
    }
}
