
<%@ page import="com.projektorapp.Task" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'task.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="token" title="${message(code: 'task.token.label', default: 'Token')}" />
                        
                            <g:sortableColumn property="summary" title="${message(code: 'task.summary.label', default: 'Summary')}" />
                        
                            <g:sortableColumn property="offerType" title="${message(code: 'task.offerType.label', default: 'Offer Type')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'task.description.label', default: 'Description')}" />
                        
                            <th><g:message code="task.tracecard.label" default="Tracecard" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${taskInstanceList}" status="i" var="taskInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${taskInstance.id}">${fieldValue(bean: taskInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: taskInstance, field: "token")}</td>
                        
                            <td>${fieldValue(bean: taskInstance, field: "summary")}</td>
                        
                            <td>${fieldValue(bean: taskInstance, field: "offerType")}</td>
                        
                            <td>${fieldValue(bean: taskInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: taskInstance, field: "tracecard")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${taskInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
