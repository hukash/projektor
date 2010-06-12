package com.projektorapp

import org.codehaus.groovy.grails.plugins.springsecurity.Secured

class ChangeStatusController {

    //static defaultAction = "statusCreated"

    def tracecardInstance = new Tracecard()

    def getTracecard(tracecardId) {
        def tracecard = Tracecard.get(tracecardId)
        return tracecard
    }
    //@Secured(['ROLE_ADMIN'])
    def updateStatus = {
        if (params.id) {
            def tracecard = getTracecard(params.id)
            if(!tracecard) {
                flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tracecard.label', default: 'Tracecard'), params.id])}"
                redirect(controller: "tracecard", action: "list")
            } else {
                tracecardInstance = tracecard
                editStatus(tracecardInstance)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tracecard.label', default: 'Tracecard'), params.id])}"
            redirect(controller: "tracecard", action: "list")
        }
    }

    /*
        Status-Management
        0   inProcess                   ROLE_USER
        1   completed                   ROLE_USER
        2   controlled                  ROLE_CONTROLLING g
        3   controlledByManagement_1    ROLE_MANAGEMENT1, ROLE_MANAGEMENT
        4   controlledByManagement_2    ROLE_MANAGEMENT2, ROLE_MANAGEMENT
        5   controlledByManagement_3    ROLE_MANAGEMENT3, ROLE_MANAGEMENT
        6   offered                     ROLE_CONTROLLING
        7   approved                    ROLE_CONTROLLING
        8   dismissed                   ROLE_USER, ROLE_CONTROLLING
        9   incomplete                  ROLE_CONTROLLING, ROLE_MANAGEMENT
       10   archived                    ROLE_CONTROLLING
     */

    def editStatus(tracecardInstance) {
        def tracecard = tracecardInstance
        switch(tracecard.status) {
            case 0:
                tracecard.status = 1
                break
            case 1:
                tracecard.status = 2
                break
            case 2:
                tracecard.status = 3
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
