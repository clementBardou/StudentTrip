package org.studenttrip

import org.springframework.dao.DataIntegrityViolationException

class ProfilController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [profilInstanceList: Profil.list(params), profilInstanceTotal: Profil.count()]
    }

    def create() {
        [profilInstance: new Profil(params)]
    }

    def save() {
        def profilInstance = new Profil(params)
        if (!profilInstance.save(flush: true)) {
            render(view: "create", model: [profilInstance: profilInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'profil.label', default: 'Profil'), profilInstance.id])
        redirect(action: "show", id: profilInstance.id)
    }

    def show(Long id) {
        def profilInstance = Profil.get(id)
        if (!profilInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'profil.label', default: 'Profil'), id])
            redirect(action: "list")
            return
        }

        [profilInstance: profilInstance]
    }

    def edit(Long id) {
        def profilInstance = Profil.get(id)
        if (!profilInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'profil.label', default: 'Profil'), id])
            redirect(action: "list")
            return
        }

        [profilInstance: profilInstance]
    }

    def update(Long id, Long version) {
        def profilInstance = Profil.get(id)
        if (!profilInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'profil.label', default: 'Profil'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (profilInstance.version > version) {
                profilInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'profil.label', default: 'Profil')] as Object[],
                          "Another user has updated this Profil while you were editing")
                render(view: "edit", model: [profilInstance: profilInstance])
                return
            }
        }

        profilInstance.properties = params

        if (!profilInstance.save(flush: true)) {
            render(view: "edit", model: [profilInstance: profilInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'profil.label', default: 'Profil'), profilInstance.id])
        redirect(action: "show", id: profilInstance.id)
    }

    def delete(Long id) {
        def profilInstance = Profil.get(id)
        if (!profilInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'profil.label', default: 'Profil'), id])
            redirect(action: "list")
            return
        }

        try {
            profilInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'profil.label', default: 'Profil'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'profil.label', default: 'Profil'), id])
            redirect(action: "show", id: id)
        }
    }
}
