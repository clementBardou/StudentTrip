package org.studenttrip

import org.springframework.dao.DataIntegrityViolationException

class EtatParticipationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [etatParticipationInstanceList: EtatParticipation.list(params), etatParticipationInstanceTotal: EtatParticipation.count()]
    }

    def create() {
        [etatParticipationInstance: new EtatParticipation(params)]
    }

    def save() {
        def etatParticipationInstance = new EtatParticipation(params)
        if (!etatParticipationInstance.save(flush: true)) {
            render(view: "create", model: [etatParticipationInstance: etatParticipationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'etatParticipation.label', default: 'EtatParticipation'), etatParticipationInstance.id])
        redirect(action: "show", id: etatParticipationInstance.id)
    }

    def show(Long id) {
        def etatParticipationInstance = EtatParticipation.get(id)
        if (!etatParticipationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'etatParticipation.label', default: 'EtatParticipation'), id])
            redirect(action: "list")
            return
        }

        [etatParticipationInstance: etatParticipationInstance]
    }

    def edit(Long id) {
        def etatParticipationInstance = EtatParticipation.get(id)
        if (!etatParticipationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'etatParticipation.label', default: 'EtatParticipation'), id])
            redirect(action: "list")
            return
        }

        [etatParticipationInstance: etatParticipationInstance]
    }

    def update(Long id, Long version) {
        def etatParticipationInstance = EtatParticipation.get(id)
        if (!etatParticipationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'etatParticipation.label', default: 'EtatParticipation'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (etatParticipationInstance.version > version) {
                etatParticipationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'etatParticipation.label', default: 'EtatParticipation')] as Object[],
                          "Another user has updated this EtatParticipation while you were editing")
                render(view: "edit", model: [etatParticipationInstance: etatParticipationInstance])
                return
            }
        }

        etatParticipationInstance.properties = params

        if (!etatParticipationInstance.save(flush: true)) {
            render(view: "edit", model: [etatParticipationInstance: etatParticipationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'etatParticipation.label', default: 'EtatParticipation'), etatParticipationInstance.id])
        redirect(action: "show", id: etatParticipationInstance.id)
    }

    def delete(Long id) {
        def etatParticipationInstance = EtatParticipation.get(id)
        if (!etatParticipationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'etatParticipation.label', default: 'EtatParticipation'), id])
            redirect(action: "list")
            return
        }

        try {
            etatParticipationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'etatParticipation.label', default: 'EtatParticipation'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'etatParticipation.label', default: 'EtatParticipation'), id])
            redirect(action: "show", id: id)
        }
    }
}
