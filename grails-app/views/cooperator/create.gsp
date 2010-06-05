
<%@ page import="com.projektorapp.Cooperator" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'cooperator.label', default: 'Cooperator')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${cooperatorInstance}">
            <div class="errors">
                <g:renderErrors bean="${cooperatorInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="cooperator.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cooperatorInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${cooperatorInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="hours_to_schedule"><g:message code="cooperator.hours_to_schedule.label" default="Hourstoschedule" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cooperatorInstance, field: 'hours_to_schedule', 'errors')}">
                                    <g:textField name="hours_to_schedule" value="${fieldValue(bean: cooperatorInstance, field: 'hours_to_schedule')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="hours_to_invoice"><g:message code="cooperator.hours_to_invoice.label" default="Hourstoinvoice" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cooperatorInstance, field: 'hours_to_invoice', 'errors')}">
                                    <g:textField name="hours_to_invoice" value="${fieldValue(bean: cooperatorInstance, field: 'hours_to_invoice')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="task"><g:message code="cooperator.task.label" default="Task" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cooperatorInstance, field: 'task', 'errors')}">
                                    <g:select name="task.id" from="${com.projektorapp.Task.list()}" optionKey="id" value="${cooperatorInstance?.task?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
