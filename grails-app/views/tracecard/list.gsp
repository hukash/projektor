
<%@ page import="com.projektorapp.Tracecard" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tracecard.label', default: 'Tracecard')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'tracecard.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="creator" title="${message(code: 'tracecard.creator.label', default: 'Creator')}" />
                        
                            <g:sortableColumn property="client" title="${message(code: 'tracecard.client.label', default: 'Client')}" />
                        
                            <g:sortableColumn property="contact_name" title="${message(code: 'tracecard.contact_name.label', default: 'Contactname')}" />
                        
                            <g:sortableColumn property="contact_email" title="${message(code: 'tracecard.contact_email.label', default: 'Contactemail')}" />
                        
                            <g:sortableColumn property="token" title="${message(code: 'tracecard.token.label', default: 'Token')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${tracecardInstanceList}" status="i" var="tracecardInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${tracecardInstance.id}">${fieldValue(bean: tracecardInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: tracecardInstance, field: "creator")}</td>
                        
                            <td>${fieldValue(bean: tracecardInstance, field: "client")}</td>
                        
                            <td>${fieldValue(bean: tracecardInstance, field: "contact_name")}</td>
                        
                            <td>${fieldValue(bean: tracecardInstance, field: "contact_email")}</td>
                        
                            <td>${fieldValue(bean: tracecardInstance, field: "token")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${tracecardInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
