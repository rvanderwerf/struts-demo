<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<%@ taglib prefix="g" uri="http://grails.codehaus.org/tags" %>

<div class="fieldcontain  ">
    <label for="firstName">
        <g:message code="person.firstName.label" />

    </label>
    <html:text property="firstName"  value="${personInstance.firstName}"/>
</div>

<div class="fieldcontain  ">
    <label for="lastName">
        <g:message code="person.lastName.label" />

    </label>
    <html:text property="lastName"  value="${personInstance.lastName}"/>
</div>

<div class="fieldcontain required">
    <label for="email">
        <g:message code="person.email.label"  />
        <span class="required-indicator">*</span>
    </label>
    <html:textarea property="email" cols="40" rows="5"   value="${personInstance.email}"/>
</div>

<div class="fieldcontain  ">
    <label for="phone">
        <g:message code="person.phone.label"  />

    </label>
    <html:text property="phone" value="${personInstance.phone}"/>
</div>
<html:hidden property="id" value="${personInstance.id}"/>
