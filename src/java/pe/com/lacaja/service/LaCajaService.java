/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.com.lacaja.service;

import java.util.List;
import javax.jws.WebService;
import pe.com.lacaja.model.Beneficiario;
import pe.com.lacaja.model.Boleta;
import pe.com.lacaja.model.Consulta;

/**
 *
 * @author AlfredoRegis
 */
@WebService
public interface LaCajaService {    
    
    boolean getUsuarioPorNroDoc(String nroDoc, String clave);
    
    List<Beneficiario> getBeneficiario(String NroDoc);
    
    List<Boleta> getBoletas(String CodPer);    
    
    List<Consulta> getConsultas(String NroDoc);
}
