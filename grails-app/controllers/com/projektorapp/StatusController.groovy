package com.projektorapp

import org.codehaus.groovy.grails.plugins.springsecurity.Secured

class StatusController {

    def tracecardInstance = null
    
    def getTracecard = {
        tracecardInstance = Tracecard.get(params.id)
    }
    @Secured(['ROLE_ADMIN'])
    def status_created = {
       if (tracecardInstance.status == 0) {
            tracecardInstance.status = 1
        }
        // else render template with error message
    }

    def change_status = {
        tracecard = Tracecard.get(params.id)
        // all values must be assigned through a variable in a form
        switch(tracecard.status) {
            case 0:
                tracecard.status = 1 // signed by creator
                break
            case 1:
                tracecard.status = 2 // signed by controlling
                break
            case 2:
                tracecard.status = 3 // signed by management
                break
            case { tracecard.status >= 5 }:
                tracecard.status = 6
                break
            default:
                tracecard.status = 0
        }
        render tracecard.status.toString()
    }
}
