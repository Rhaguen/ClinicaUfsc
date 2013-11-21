/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ufsc.trabalho.controller;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import ufsc.trabalho.model.TipoLogradouro;

/**
 *
 * @author ezequiel
 */
@Stateless
public class TipoLogradouroFacade extends AbstractFacade<TipoLogradouro> {
    @PersistenceContext(unitName = "TrabalhoPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public TipoLogradouroFacade() {
        super(TipoLogradouro.class);
    }
    
}
