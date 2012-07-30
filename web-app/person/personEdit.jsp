
<%@ taglib uri="http://struts.apache.org/tags-html"  prefix="html" %>

<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
<%@ taglib prefix="g" uri="http://grails.codehaus.org/tags" %>

<%@ page import="org.grails.struts.demo.Person" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Grails</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="/struts-demo/static/images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="/struts-demo/static/images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/struts-demo/static/images/apple-touch-icon-retina.png">
    <link rel="stylesheet" href="/struts-demo/static/css/main.css" type="text/css">
    <link rel="stylesheet" href="/struts-demo/static/css/mobile.css" type="text/css">


    <meta name="layout" content="main">
    <link rel="stylesheet" href="/struts-demo/static/css/errors.css" type="text/css">


    <title><g:message code="default.create.label"  /></title>
</head>
<body>
<div id="grailsLogo" role="banner"><a href="http://grails.org"><img src="/struts-demo/static/images/grails_logo.png" alt="Grails"/></a></div>

<a href="#edit-person" class="skip" tabindex="-1">Skip to content&hellip;</a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="/struts-demo/">Home</a></li>
        <li><a href="/struts-demo/person/list" class="list">Person List</a></li>
        <li><a href="/struts-demo/person/create" class="create">New Person</a></li>
    </ul>
</div>
<div id="edit-person" class="content scaffold-edit" role="main">
    <h1>Edit Person</h1>
    <html:errors/>

    <%--<html:hasErrors bean="${personInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${personInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><bean:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </html:hasErrors>--%>
    <html:form action="/demo/SavePerson.do" >
        <fieldset class="form">
            <jsp:include page="form.jsp" flush="true"/>
        </fieldset>
        <fieldset class="buttons">
            <html:submit styleClass="save" value="Create"/>
        </fieldset>
    </html:form>
</div>
</body>
</html>
