
<%@ page import="com.projektorapp.Task" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${taskInstance}">
            <div class="errors">
                <g:renderErrors bean="${taskInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${taskInstance?.id}" />
                <g:hiddenField name="version" value="${taskInstance?.version}" />
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
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="cooperators"><g:message code="task.cooperators.label" default="Cooperators" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'cooperators', 'errors')}">
                                    
<ul>
<g:each in="${taskInstance?.cooperators?}" var="c">
    <li><g:link controller="cooperator" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="cooperator" action="create" params="['task.id': taskInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'cooperator.label', default: 'Cooperator')])}</g:link>

                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
