
<%@ page import="com.projektorapp.Task" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
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
            <g:hasErrors bean="${taskInstance}">
            <div class="errors">
                <g:renderErrors bean="${taskInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="token"><g:message code="task.token.label" default="Token" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'token', 'errors')}">
                                    <g:textField name="token" value="${taskInstance?.token}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="summary"><g:message code="task.summary.label" default="Summary" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'summary', 'errors')}">
                                    <g:textField name="summary" value="${taskInstance?.summary}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="offerType"><g:message code="task.offerType.label" default="Offer Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'offerType', 'errors')}">
                                    <g:select name="offerType" from="${taskInstance.constraints.offerType.inList}" value="${taskInstance?.offerType}" valueMessagePrefix="task.offerType"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="task.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" value="${taskInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tracecard"><g:message code="task.tracecard.label" default="Tracecard" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'tracecard', 'errors')}">
                                    <g:select name="tracecard.id" from="${com.projektorapp.Tracecard.list()}" optionKey="id" value="${taskInstance?.tracecard?.id}"  />
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
