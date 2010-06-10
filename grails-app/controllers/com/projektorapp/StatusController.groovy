package com.projektorapp

import org.codehaus.groovy.grails.plugins.springsecurity.Secured

class StatusController {

    def get_tracecard(tracecardId) {
         def tracecardInstance = Tracecard.get(tracecardId)
        if (!tracecardInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tracecard.label', default: 'Tracecard'), tracecardId])}"
            redirect(controller: "tracecard", action: "list")
        }
        else {
            render tracecardInstance.topic
            return tracecardInstance
        }
    }

    def index = {
        redirect(action: "status_created", params: params)        
    }

    //@Secured(['ROLE_ADMIN'])
    def status_created = {
        def mytc = get_tracecard(params.id)
        if (mytc.status == 0) {
            mytc.status = 1
        }
        else {
            redirect(controller: "tracecard", action: "show", id: mytc.id)
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
