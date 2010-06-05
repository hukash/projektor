
<%@ page import="com.projektorapp.Cooperator" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'cooperator.label', default: 'Cooperator')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'cooperator.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'cooperator.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="hours_to_schedule" title="${message(code: 'cooperator.hours_to_schedule.label', default: 'Hourstoschedule')}" />
                        
                            <g:sortableColumn property="hours_to_invoice" title="${message(code: 'cooperator.hours_to_invoice.label', default: 'Hourstoinvoice')}" />
                        
                            <th><g:message code="cooperator.task.label" default="Task" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${cooperatorInstanceList}" status="i" var="cooperatorInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${cooperatorInstance.id}">${fieldValue(bean: cooperatorInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: cooperatorInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: cooperatorInstance, field: "hours_to_schedule")}</td>
                        
                            <td>${fieldValue(bean: cooperatorInstance, field: "hours_to_invoice")}</td>
                        
                            <td>${fieldValue(bean: cooperatorInstance, field: "task")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${cooperatorInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
