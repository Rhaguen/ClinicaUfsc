/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ufsc.trabalho.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import ufsc.trabalho.beans.util.JsfUtil;
import ufsc.trabalho.model.Agendamento;
import ufsc.trabalho.model.ProfissionalEspecialidade;

/**
 *
 * @author ezequiel
 */
@Stateless
public class AgendamentoFacade extends AbstractFacade<Agendamento> {

    @PersistenceContext(unitName = "TrabalhoPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AgendamentoFacade() {
        super(Agendamento.class);
    }

    public boolean validaAgenda(Date dataHora, ProfissionalEspecialidade profissionalespecialidadeId) {
        Calendar calendar = new GregorianCalendar();
        calendar.setTime(dataHora);

        String sql = "select * from agenda where diaDaSemana = '" + (calendar.get(Calendar.DAY_OF_WEEK)-1) + "' AND \n"
                + "'" + calendar.get(Calendar.HOUR) + ":" + calendar.get(Calendar.MINUTE) + "' between inicioExpediente and fimExpediente AND '" + calendar.get(Calendar.HOUR) + ":" + calendar.get(Calendar.MINUTE) + "' NOT  BETWEEN inicioIntervalo And fimIntervalo \n"
                + "AND profissional_id = " + profissionalespecialidadeId.getProfissionalId().getId();

        Query q = getEntityManager().createNativeQuery(sql);
        
        
        JsfUtil.addSuccessMessage(sql);
        
        List resultList = q.getResultList();
        
        if (resultList == null || resultList.size() == 0) {
            return false;
        }

        return true;

    }

}
