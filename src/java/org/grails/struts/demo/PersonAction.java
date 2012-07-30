package org.grails.struts.demo;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created with IntelliJ IDEA.
 * User: ryanv
 * Date: 7/20/12
 * Time: 10:00 PM
 * To change this template use File | Settings | File Templates.
 */
public class PersonAction extends Action {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        return super.execute(mapping, form, request, response);    //To change body of overridden methods use File | Settings | File Templates.
    }
}
