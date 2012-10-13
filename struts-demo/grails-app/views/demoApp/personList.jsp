
<%@ taglib uri="http://struts.apache.org/tags-html"  prefix="html" %>
<%@ taglib prefix="g" uri="http://grails.codehaus.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div id="list-person" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label"  /></h1>
    <html:errors/>
    <table>
        <thead>
        <tr>
            <th><g:message code="person.firstName.label"/></th>
            <th><g:message code="person.lastName.label"/></th>
            <th><g:message code="person.email.label"/></th>
            <th><g:message code="person.phone.label"/></th>

        </tr>
        </thead>
        <tbody>
       <%-- <c:forEach var="personInstance" items="${peopleList}" varStatus="i">--%>
      <%-- <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">--%>
       <c:forEach var="personInstance" items="${peopleList}">
            <tr>

                <td><a href="/struts-demo/demo/GetPerson.do?id=${personInstance.id}">${personInstance.firstName}</a></td>

                <td>${personInstance.lastName}</td>

                <td>${personInstance.email}</td>

                <td>${personInstance.phone}</td>

            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>
</body>
</html>
