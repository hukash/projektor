package com.projektorapp

import org.codehaus.groovy.grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class CooperatorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [cooperatorInstanceList: Cooperator.list(params), cooperatorInstanceTotal: Cooperator.count()]
    }

    def create = {
        def cooperatorInstance = new Cooperator()
        cooperatorInstance.properties = params
        return [cooperatorInstance: cooperatorInstance]
    }

    def save = {
        def cooperatorInstance = new Cooperator(params)
        if (cooperatorInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'cooperator.label', default: 'Cooperator'), cooperatorInstance.id])}"
            redirect(action: "show", id: cooperatorInstance.id)
        }
        else {
            render(view: "create", model: [cooperatorInstance: cooperatorInstance])
        }
    }

    def show = {
        def cooperatorInstance = Cooperator.get(params.id)
        if (!cooperatorInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'cooperator.label', default: 'Cooperator'), params.id])}"
            redirect(action: "list")
        }
        else {
            [cooperatorInstance: cooperatorInstance]
        }
    }

    def edit = {
        def cooperatorInstance = Cooperator.get(params.id)
        if (!cooperatorInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'cooperator.label', default: 'Cooperator'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [cooperatorInstance: cooperatorInstance]
        }
    }

    def update = {
        def cooperatorInstance = Cooperator.get(params.id)
        if (cooperatorInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (cooperatorInstance.version > version) {
                    
                    cooperatorInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'cooperator.label', default: 'Cooperator')] as Object[], "Another user has updated this Cooperator while you were editing")
                    render(view: "edit", model: [cooperatorInstance: cooperatorInstance])
                    return
                }
            }
            cooperatorInstance.properties = params
            if (!cooperatorInstance.hasErrors() && cooperatorInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'cooperator.label', default: 'Cooperator'), cooperatorInstance.id])}"
                redirect(action: "show", id: cooperatorInstance.id)
            }
            else {
                render(view: "edit", model: [cooperatorInstance: cooperatorInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'cooperator.label', default: 'Cooperator'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def cooperatorInstance = Cooperator.get(params.id)
        if (cooperatorInstance) {
            try {
                cooperatorInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'cooperator.label', default: 'Cooperator'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'cooperator.label', default: 'Cooperator'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'cooperator.label', default: 'Cooperator'), params.id])}"
            redirect(action: "list")
        }
    }
}
