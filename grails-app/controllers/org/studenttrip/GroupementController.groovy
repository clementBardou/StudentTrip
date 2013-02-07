package org.studenttrip

import org.springframework.dao.DataIntegrityViolationException

class GroupementController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [groupementInstanceList: Groupement.list(params), groupementInstanceTotal: Groupement.count()]
    }

    def create() {
        [groupementInstance: new Groupement(params)]
    }

    def save() {
        def groupementInstance = new Groupement(params)
        if (!groupementInstance.save(flush: true)) {
            render(view: "create", model: [groupementInstance: groupementInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'groupement.label', default: 'Groupement'), groupementInstance.id])
        redirect(action: "show", id: groupementInstance.id)
    }

    def show(Long id) {
        def groupementInstance = Groupement.get(id)
        if (!groupementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'groupement.label', default: 'Groupement'), id])
            redirect(action: "list")
            return
        }

        [groupementInstance: groupementInstance]
    }

    def edit(Long id) {
        def groupementInstance = Groupement.get(id)
        if (!groupementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'groupement.label', default: 'Groupement'), id])
            redirect(action: "list")
            return
        }

        [groupementInstance: groupementInstance]
    }

    def update(Long id, Long version) {
        def groupementInstance = Groupement.get(id)
        if (!groupementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'groupement.label', default: 'Groupement'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (groupementInstance.version > version) {
                groupementInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'groupement.label', default: 'Groupement')] as Object[],
                          "Another user has updated this Groupement while you were editing")
                render(view: "edit", model: [groupementInstance: groupementInstance])
                return
            }
        }

        groupementInstance.properties = params

        if (!groupementInstance.save(flush: true)) {
            render(view: "edit", model: [groupementInstance: groupementInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'groupement.label', default: 'Groupement'), groupementInstance.id])
        redirect(action: "show", id: groupementInstance.id)
    }

    def delete(Long id) {
        def groupementInstance = Groupement.get(id)
        if (!groupementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'groupement.label', default: 'Groupement'), id])
            redirect(action: "list")
            return
        }

        try {
            groupementInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'groupement.label', default: 'Groupement'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'groupement.label', default: 'Groupement'), id])
            redirect(action: "show", id: id)
        }
    }
}
