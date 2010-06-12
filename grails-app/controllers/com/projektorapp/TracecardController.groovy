package com.projektorapp

class TracecardController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [tracecardInstanceList: Tracecard.list(params), tracecardInstanceTotal: Tracecard.count()]
    }

    def create = {
        def tracecardInstance = new Tracecard(params["tracecard"])
        def statusInstance = new Status(params["status"])
        tracecardInstance.properties = params
        return [tracecardInstance: tracecardInstance, statusInstance: statusInstance]
    }

    def save = {
        def tracecardInstance = new Tracecard(params)
        if (tracecardInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'tracecard.label', default: 'Tracecard'), tracecardInstance.id])}"
            redirect(action: "show", id: tracecardInstance.id)
        }
        else {
            render(view: "create", model: [tracecardInstance: tracecardInstance])
        }
    }

    def show = {
        def tracecardInstance = Tracecard.get(params.id)
        if (!tracecardInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tracecard.label', default: 'Tracecard'), params.id])}"
            redirect(action: "list")
        }
        else {
            [tracecardInstance: tracecardInstance]
        }
    }

    def edit = {
        def tracecardInstance = Tracecard.get(params.id)
        if (!tracecardInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tracecard.label', default: 'Tracecard'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [tracecardInstance: tracecardInstance]
        }
    }

    def update = {
        def tracecardInstance = Tracecard.get(params.id)
        if (tracecardInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (tracecardInstance.version > version) {
                    
                    tracecardInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'tracecard.label', default: 'Tracecard')] as Object[], "Another user has updated this Tracecard while you were editing")
                    render(view: "edit", model: [tracecardInstance: tracecardInstance])
                    return
                }
            }
            tracecardInstance.properties = params
            if (!tracecardInstance.hasErrors() && tracecardInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'tracecard.label', default: 'Tracecard'), tracecardInstance.id])}"
                redirect(action: "show", id: tracecardInstance.id)
            }
            else {
                render(view: "edit", model: [tracecardInstance: tracecardInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tracecard.label', default: 'Tracecard'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def tracecardInstance = Tracecard.get(params.id)
        if (tracecardInstance) {
            try {
                tracecardInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'tracecard.label', default: 'Tracecard'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'tracecard.label', default: 'Tracecard'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tracecard.label', default: 'Tracecard'), params.id])}"
            redirect(action: "list")
        }
    }
}
