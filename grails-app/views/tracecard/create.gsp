<%@ page import="com.projektorapp.Tracecard" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tracecard.label', default: 'Tracecard')}" />
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
            <g:hasErrors bean="${tracecardInstance}">
            <div class="errors">
                <g:renderErrors bean="${tracecardInstance}" as="list" />
            </div>
            </g:hasErrors>           
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="creator"><g:message code="tracecard.creator.label" default="Creator" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tracecardInstance, field: 'creator', 'errors')}">
                                    <g:textField name="creator" value="${tracecardInstance?.creator}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="client"><g:message code="tracecard.client.label" default="Client" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tracecardInstance, field: 'client', 'errors')}">
                                    <g:textField name="client" value="${tracecardInstance?.client}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contact_name"><g:message code="tracecard.contact_name.label" default="Contactname" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tracecardInstance, field: 'contact_name', 'errors')}">
                                    <g:textField name="contact_name" value="${tracecardInstance?.contact_name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contact_email"><g:message code="tracecard.contact_email.label" default="Contactemail" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tracecardInstance, field: 'contact_email', 'errors')}">
                                    <g:textField name="contact_email" value="${tracecardInstance?.contact_email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="token"><g:message code="tracecard.token.label" default="Token" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tracecardInstance, field: 'token', 'errors')}">
                                    <g:textField name="token" value="${tracecardInstance?.token}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="topic"><g:message code="tracecard.topic.label" default="Topic" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tracecardInstance, field: 'topic', 'errors')}">
                                    <g:textField name="topic" value="${tracecardInstance?.topic}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="domain"><g:message code="tracecard.domain.label" default="Domain" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tracecardInstance, field: 'domain', 'errors')}">
                                    <g:textField name="domain" value="${tracecardInstance?.domain}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="offerId"><g:message code="tracecard.offerId.label" default="Offer Id" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tracecardInstance, field: 'offerId', 'errors')}">
                                    <g:textField name="offerId" value="${tracecardInstance?.offerId}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="orderId"><g:message code="tracecard.orderId.label" default="Order Id" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tracecardInstance, field: 'orderId', 'errors')}">
                                    <g:textField name="orderId" value="${tracecardInstance?.orderId}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="tracecard.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tracecardInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" value="${tracecardInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="status.lastEditor"><g:message code="status.lastEditor.label" default="last Editor" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tracecardInstance, field: 'status.lastEditor', 'errors')}">
                                    <g:textField name="status.lastEditor" value="${statusInstance?.lastEditor}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="status.description"><g:message code="status.description.label" default="Status Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tracecardInstance, field: 'status.description', 'errors')}">
                                    <g:textField name="status.description" value="${statusInstance?.description}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="status.statusNr"><g:message code="status.statusNr.label" default="Status Nr" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tracecardInstance, field: 'status.statusNr', 'errors')}">
                                    <g:textField name="status.statusNr" value="${statusInstance?.statusNr}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="deadline"><g:message code="tracecard.deadline.label" default="Deadline" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tracecardInstance, field: 'deadline', 'errors')}">
                                    <g:datePicker name="deadline" precision="day" value="${tracecardInstance?.deadline}"  />
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
