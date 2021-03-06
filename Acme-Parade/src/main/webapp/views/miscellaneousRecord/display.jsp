<%--
 * 
 *
 * Copyright (C) 2019 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>
 
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@ taglib prefix="acme" tagdir="/WEB-INF/tags" %>

	<b><spring:message code="miscellaneousRecord.title" /></b>:
	<jstl:out value="${miscellaneousRecord.title}"/><br/>
	
	<b><spring:message code="miscellaneousRecord.description" /></b>:
	<jstl:out value="${miscellaneousRecord.description }"/><br/>
		<br />
	<security:authorize access="hasRole('BROTHERHOOD')">
	<a href="miscellaneousRecord/brotherhood/edit.do?miscellaneousRecordId=${miscellaneousRecord.id}"><spring:message code="miscellaneousRecord.edit"/></a>
	<br />
	<a href="miscellaneousRecord/brotherhood/delete.do?miscellaneousRecordId=${miscellaneousRecord.id}"><spring:message code="miscellaneousRecord.delete"/></a>
	</security:authorize>