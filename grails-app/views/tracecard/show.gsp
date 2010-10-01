
<%@ page import="com.projektorapp.Tracecard" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tracecard.label', default: 'Tracecard')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tracecard.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tracecardInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tracecard.creator.label" default="Creator" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tracecardInstance, field: "creator")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tracecard.client.label" default="Client" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tracecardInstance, field: "client")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tracecard.contact_name.label" default="Contactname" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tracecardInstance, field: "contact_name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tracecard.contact_email.label" default="Contactemail" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tracecardInstance, field: "contact_email")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tracecard.token.label" default="Token" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tracecardInstance, field: "token")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tracecard.topic.label" default="Topic" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tracecardInstance, field: "topic")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tracecard.domain.label" default="Domain" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tracecardInstance, field: "domain")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tracecard.offerId.label" default="Offer Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tracecardInstance, field: "offerId")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tracecard.orderId.label" default="Order Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tracecardInstance, field: "orderId")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tracecard.description.label" default="Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tracecardInstance, field: "description")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tracecard.status.label" default="Status" /></td>
                            
                            <td valign="top" class="value"><g:link controller="status" action="show" id="${tracecardInstance?.status?.id}">${tracecardInstance?.status?.statusNr?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tracecard.lastUpdated.label" default="Last Updated" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${tracecardInstance?.lastUpdated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tracecard.tasks.label" default="Tasks" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${tracecardInstance.tasks}" var="t">
                                    <li><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tracecard.dateCreated.label" default="Date Created" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${tracecardInstance?.dateCreated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tracecard.deadline.label" default="Deadline" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${tracecardInstance?.deadline}" /></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${tracecardInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
