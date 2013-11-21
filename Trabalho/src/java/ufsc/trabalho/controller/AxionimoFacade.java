/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ufsc.trabalho.controller;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import ufsc.trabalho.model.Axionimo;

/**
 *
 * @author ezequiel
 */
@Stateless
public class AxionimoFacade extends AbstractFacade<Axionimo> {
    @PersistenceContext(unitName = "TrabalhoPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AxionimoFacade() {
        super(Axionimo.class);
    }
    
}
