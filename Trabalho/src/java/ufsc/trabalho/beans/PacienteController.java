package ufsc.trabalho.beans;

import ufsc.trabalho.model.Paciente;
import ufsc.trabalho.beans.util.JsfUtil;
import ufsc.trabalho.beans.util.PaginationHelper;
import ufsc.trabalho.controller.PacienteFacade;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import javax.faces.model.SelectItem;
import org.primefaces.model.LazyDataModel;
import org.primefaces.model.SortOrder;

@ManagedBean(name = "pacienteController")
@SessionScoped
public class PacienteController implements Serializable {

    private Paciente current;
    private DataModel items = null;
    @EJB
    private ufsc.trabalho.controller.PacienteFacade ejbFacade;
    private PaginationHelper pagination;
    private int selectedItemIndex;

    private LazyDataModel<Object[]> viewDadosPaciente;
    private LazyDataModel<Object[]> viewDadosAgendaProfissional;
    private LazyDataModel<Object[]> viewDadosProfissional;
    private LazyDataModel<Object[]> viewDadosPacientePlano;
    private LazyDataModel<Object[]> viewDadosAgendamento;
    private LazyDataModel<Object[]> viewDadosProducao;
    
    public PacienteController() {
    }

    public Paciente getSelected() {
        if (current == null) {
            current = new Paciente();
            selectedItemIndex = -1;
        }
        return current;
    }

    private PacienteFacade getFacade() {
        return ejbFacade;
    }

    public PaginationHelper getPagination() {
        if (pagination == null) {
            pagination = new PaginationHelper(10) {

                @Override
                public int getItemsCount() {
                    return getFacade().count();
                }

                @Override
                public DataModel createPageDataModel() {
                    return new ListDataModel(getFacade().findRange(new int[]{getPageFirstItem(), getPageFirstItem() + getPageSize()}));
                }
            };
        }
        return pagination;
    }

    public String prepareList() {
        recreateModel();
        return "List";
    }

    public String prepareView() {
        current = (Paciente) getItems().getRowData();
        selectedItemIndex = pagination.getPageFirstItem() + getItems().getRowIndex();
        return "View";
    }

    public String prepareCreate() {
        current = new Paciente();
        selectedItemIndex = -1;
        return "Create";
    }

    public String create() {
        try {
            getFacade().create(current);
            JsfUtil.addSuccessMessage(ResourceBundle.getBundle("/Bundle").getString("PacienteCreated"));
            return prepareCreate();
        } catch (Exception e) {
            JsfUtil.addErrorMessage(e, ResourceBundle.getBundle("/Bundle").getString("PersistenceErrorOccured"));
            return null;
        }
    }

    public String prepareEdit() {
        current = (Paciente) getItems().getRowData();
        selectedItemIndex = pagination.getPageFirstItem() + getItems().getRowIndex();
        return "Edit";
    }

    public String update() {
        try {
            getFacade().edit(current);
            JsfUtil.addSuccessMessage(ResourceBundle.getBundle("/Bundle").getString("PacienteUpdated"));
            return "View";
        } catch (Exception e) {
            JsfUtil.addErrorMessage(e, ResourceBundle.getBundle("/Bundle").getString("PersistenceErrorOccured"));
            return null;
        }
    }

    public String destroy() {
        current = (Paciente) getItems().getRowData();
        selectedItemIndex = pagination.getPageFirstItem() + getItems().getRowIndex();
        performDestroy();
        recreatePagination();
        recreateModel();
        return "List";
    }

    public String destroyAndView() {
        performDestroy();
        recreateModel();
        updateCurrentItem();
        if (selectedItemIndex >= 0) {
            return "View";
        } else {
            // all items were removed - go back to list
            recreateModel();
            return "List";
        }
    }

    private void performDestroy() {
        try {
            getFacade().remove(current);
            JsfUtil.addSuccessMessage(ResourceBundle.getBundle("/Bundle").getString("PacienteDeleted"));
        } catch (Exception e) {
            JsfUtil.addErrorMessage(e, ResourceBundle.getBundle("/Bundle").getString("PersistenceErrorOccured"));
        }
    }

    private void updateCurrentItem() {
        int count = getFacade().count();
        if (selectedItemIndex >= count) {
            // selected index cannot be bigger than number of items:
            selectedItemIndex = count - 1;
            // go to previous page if last page disappeared:
            if (pagination.getPageFirstItem() >= count) {
                pagination.previousPage();
            }
        }
        if (selectedItemIndex >= 0) {
            current = getFacade().findRange(new int[]{selectedItemIndex, selectedItemIndex + 1}).get(0);
        }
    }

    public DataModel getItems() {
        if (items == null) {
            items = getPagination().createPageDataModel();
        }
        return items;
    }

    private void recreateModel() {
        items = null;
    }

    private void recreatePagination() {
        pagination = null;
    }

    public String next() {
        getPagination().nextPage();
        recreateModel();
        return "List";
    }

    public String previous() {
        getPagination().previousPage();
        recreateModel();
        return "List";
    }
    
    

    public SelectItem[] getItemsAvailableSelectMany() {
        return JsfUtil.getSelectItems(ejbFacade.findAll(), false);
    }

    public SelectItem[] getItemsAvailableSelectOne() {
        return JsfUtil.getSelectItems(ejbFacade.findAll(), true);
    }

    
    @FacesConverter(forClass = Paciente.class)
    public static class PacienteControllerConverter implements Converter {

        @Override
        public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            PacienteController controller = (PacienteController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "pacienteController");
            return controller.ejbFacade.find(getKey(value));
        }

        java.lang.Integer getKey(String value) {
            java.lang.Integer key;
            key = Integer.valueOf(value);
            return key;
        }

        String getStringKey(java.lang.Integer value) {
            StringBuilder sb = new StringBuilder();
            sb.append(value);
            return sb.toString();
        }

        @Override
        public String getAsString(FacesContext facesContext, UIComponent component, Object object) {
            if (object == null) {
                return null;
            }
            if (object instanceof Paciente) {
                Paciente o = (Paciente) object;
                return getStringKey(o.getId());
            } else {
                throw new IllegalArgumentException("object " + object + " is of type " + object.getClass().getName() + "; expected type: " + Paciente.class.getName());
            }
        }

    }

    public Paciente getCurrent() {
        return current;
    }

    public void setCurrent(Paciente current) {
        this.current = current;
    }

    public PacienteFacade getEjbFacade() {
        return ejbFacade;
    }

    public void setEjbFacade(PacienteFacade ejbFacade) {
        this.ejbFacade = ejbFacade;
    }

    public int getSelectedItemIndex() {
        return selectedItemIndex;
    }

    public void setSelectedItemIndex(int selectedItemIndex) {
        this.selectedItemIndex = selectedItemIndex;
    }

    public LazyDataModel<Object[]> getViewDadosPaciente() {
        if(viewDadosPaciente==null){
            viewDadosPaciente = new LazyDataModel<Object[]>() {

                @Override
                public List<Object[]> load(int first, int pageSize, String sortField, SortOrder sortOrder, Map<String, String> filters) {
                    return ejbFacade.buscarView("dados_paciente",filters,sortField);
                }
                
            };
            
            viewDadosPaciente.setRowCount(200);
        }
        return viewDadosPaciente;
    }

    public void setViewDadosPaciente(LazyDataModel<Object[]> viewDadosPaciente) {
        this.viewDadosPaciente = viewDadosPaciente;
    }

    public LazyDataModel<Object[]> getViewDadosAgendaProfissional() {
        if(viewDadosAgendaProfissional==null){
            viewDadosAgendaProfissional = new LazyDataModel<Object[]>() {

                @Override
                public List<Object[]> load(int first, int pageSize, String sortField, SortOrder sortOrder, Map<String, String> filters) {
                    return ejbFacade.buscarView("dados_agenda_profissional",filters,sortField);
                }
                
            };
            
            viewDadosAgendaProfissional.setRowCount(200);
        }
        return viewDadosAgendaProfissional;
    }

    public void setViewDadosAgendaProfissional(LazyDataModel<Object[]> viewDadosAgendaProfissional) {
        this.viewDadosAgendaProfissional = viewDadosAgendaProfissional;
    }

    public LazyDataModel<Object[]> getViewDadosProfissional() {
        if(viewDadosProfissional==null){
            viewDadosProfissional = new LazyDataModel<Object[]>() {

                @Override
                public List<Object[]> load(int first, int pageSize, String sortField, SortOrder sortOrder, Map<String, String> filters) {
                    return ejbFacade.buscarView("dados_profissional",filters,sortField);
                }
                
            };
            
            viewDadosProfissional.setRowCount(200);
        }
        return viewDadosProfissional;
    }

    public void setViewDadosProfissional(LazyDataModel<Object[]> viewDadosProfissional) {
        this.viewDadosProfissional = viewDadosProfissional;
    }

    public LazyDataModel<Object[]> getViewDadosPacientePlano() {
        if(viewDadosPacientePlano==null){
            viewDadosPacientePlano = new LazyDataModel<Object[]>() {

                @Override
                public List<Object[]> load(int first, int pageSize, String sortField, SortOrder sortOrder, Map<String, String> filters) {
                    return ejbFacade.buscarView("dados_paciente_planos",filters,sortField);
                }
                
            };
            
            viewDadosPacientePlano.setRowCount(200);
        }
        return viewDadosPacientePlano;
        
    }

    public void setViewDadosPacientePlano(LazyDataModel<Object[]> viewDadosPacientePlano) {
        this.viewDadosPacientePlano = viewDadosPacientePlano;
    }

    public LazyDataModel<Object[]> getViewDadosAgendamento() {
        if(viewDadosAgendamento==null){
            viewDadosAgendamento = new LazyDataModel<Object[]>() {

                @Override
                public List<Object[]> load(int first, int pageSize, String sortField, SortOrder sortOrder, Map<String, String> filters) {
                    return ejbFacade.buscarView("dados_agendamento",filters,sortField);
                }
                
            };
            
            viewDadosAgendamento.setRowCount(200);
        }
        return viewDadosAgendamento;
    }

    public void setViewDadosAgendamento(LazyDataModel<Object[]> viewDadosAgendamento) {
        this.viewDadosAgendamento = viewDadosAgendamento;
    }

    public LazyDataModel<Object[]> getViewDadosProducao() {
        if(viewDadosProducao==null){
            viewDadosProducao = new LazyDataModel<Object[]>() {

                @Override
                public List<Object[]> load(int first, int pageSize, String sortField, SortOrder sortOrder, Map<String, String> filters) {
                    return ejbFacade.buscarView("dados_producao",filters,sortField);
                }
                
            };
            
            viewDadosProducao.setRowCount(200);
        }
        return viewDadosProducao;
    }

    public void setViewDadosProducao(LazyDataModel<Object[]> viewDadosProducao) {
        this.viewDadosProducao = viewDadosProducao;
    }
    

}
