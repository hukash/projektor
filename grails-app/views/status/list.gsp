
<%@ page import="com.projektorapp.Status" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'status.label', default: 'Status')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'status.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="lastEditor" title="${message(code: 'status.lastEditor.label', default: 'Last Editor')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'status.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="statusNr" title="${message(code: 'status.statusNr.label', default: 'Status Nr')}" />
                        
                            <th><g:message code="status.tracecard.label" default="Tracecard" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${statusInstanceList}" status="i" var="statusInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${statusInstance.id}">${fieldValue(bean: statusInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: statusInstance, field: "lastEditor")}</td>
                        
                            <td>${fieldValue(bean: statusInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: statusInstance, field: "statusNr")}</td>
                        
                            <td>${fieldValue(bean: statusInstance, field: "tracecard")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${statusInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
