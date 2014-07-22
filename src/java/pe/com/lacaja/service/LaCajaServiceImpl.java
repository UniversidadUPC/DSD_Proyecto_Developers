/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.com.lacaja.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.jws.WebService;
import org.apache.taglibs.standard.functions.Functions;
import pe.com.lacaja.connection.Conexion;
import pe.com.lacaja.model.Beneficiario;
import pe.com.lacaja.model.Boleta;
import pe.com.lacaja.model.Boleta_Detalle;
import pe.com.lacaja.model.Consulta;
import pe.com.lacaja.model.Consulta_Respuesta;
import pe.com.lacaja.model.Opcion;

/**
 *
 * @author AlfredoRegis
 */
@WebService(endpointInterface = "pe.com.lacaja.service.LaCajaService")
public class LaCajaServiceImpl implements LaCajaService{

    Conexion con = new Conexion();
    Connection reg = con.conexion();
    String sql;

    @Override
    public boolean getUsuarioPorNroDoc(String nroDoc, String clave) {
        boolean value;
        
        sql = "select count(1) from PENSIONWEB.PPE_T_USUARIO where nrodoc=? and clave=?";
        value = false;
        
        try {
            PreparedStatement pst=reg.prepareStatement(sql);
            pst.setString(1, nroDoc);
            pst.setString(2, clave);
            ResultSet n=pst.executeQuery();
            n.first();
            if (n.getInt(1)>0){
                System.out.println("Entró bien! Registros:"+n.getInt(1));                
                value = true;
            }
        } catch (Exception e) {
                System.out.println("Error! "+e);                 
        }
        return value;
    }

    @Override
    public List<Beneficiario> getBeneficiario(String nroDoc) {
        List<Beneficiario> benef = new ArrayList<>();
        List<Opcion> opc = new ArrayList<>();
        sql =   "select CODPER,APENOM, CODDOC, A.NRODOC, DOMICILIO \n" +
                "from PENSIONWEB.PPE_T_BENEFICIARIO A \n" +
                "inner join PENSIONWEB.PPE_T_USUARIO B on A.NroDoc = B.NroDoc\n" +
                "where B.NroDoc = ?";
                
        try {
            PreparedStatement pst=reg.prepareStatement(sql);
            pst.setString(1, nroDoc);            
            ResultSet n=pst.executeQuery();
            
            Beneficiario benef1 = new Beneficiario();
            while(n.next()){                
                benef1.setCODPER(n.getString("CODPER"));
                benef1.setAPENOM(n.getString("APENOM"));
                benef1.setCODDOC(n.getString("CODDOC"));
                benef1.setNRODOC(n.getString("NRODOC"));
                benef1.setDOMICILIO(n.getString("DOMICILIO"));                
            }
            //Carga Opciones de Usuario
            sql = "select A.opcId, A.opcDes, A.opcLnk from PENSIONWEB.PPE_T_USU_OPC B\n" +
                    "inner JOIN PENSIONWEB.PPE_T_OPCION A ON B.opcid = A.opcid\n" +
                    "where A.opcest = 'A' and B.nrodoc = ?";
            PreparedStatement pst1=reg.prepareStatement(sql);
            pst1.setString(1, nroDoc);            
            ResultSet n1=pst1.executeQuery();
                        
            while(n1.next()){                
                Opcion opcion = new Opcion();
                opcion.setOpcId(n1.getInt("opcId"));
                opcion.setOpcDes(n1.getString("opcDes"));
                opcion.setOpcLnk(n1.getString("opcLnk"));                
                opc.add(opcion);
            }
            benef1.setOpcUsu(opc);
            benef.add(benef1);
        } catch (Exception e) {
                System.out.println("Error! "+e);                 
        }
        return benef;
    }

    @Override
    public List<Boleta> getBoletas(String CodPer) {
        List<Boleta> boleta = new ArrayList<>();
        sql =   "select A.* from PENSIONWEB.PPE_T_BOLETA_CAB A\n" +
                "Where A.CODPER = ?";
                
        try {
            PreparedStatement pst=reg.prepareStatement(sql);
            pst.setString(1, CodPer);            
            ResultSet n=pst.executeQuery();
            //n.first();
            
            while(n.next()){
                Boleta boleta1 = new Boleta();
                boleta1.setPERANO(n.getInt("PERANO"));
                boleta1.setPERMES(n.getInt("PERMES"));
                boleta1.setFECGEN(Functions.substring(n.getString("FECGEN"),0,10));
                boleta1.setPLANA(n.getString("PLANA"));
                boleta1.setDESGRADBAJ(n.getString("DESGRADBAJ"));
                boleta1.setTOTREM(n.getDouble("TOTREM"));
                boleta1.setTOTDES(n.getDouble("TOTDES"));
                
                //Agrega el Detalle
                List<Boleta_Detalle> detalle = new ArrayList<>();
                sql =   "select A.* from PENSIONWEB.PPE_T_BOLETA_MOV A\n" +
                        "Where A.CODPER = ?";
                
                PreparedStatement pst1=reg.prepareStatement(sql);
                pst1.setString(1, CodPer);            
                ResultSet n1=pst1.executeQuery();
                while(n1.next()){
                    Boleta_Detalle detalle1 = new Boleta_Detalle();
                    detalle1.setTIPOMOV(n1.getString("TIPOMOV"));
                    detalle1.setCONCEPTO(n1.getString("CONCEPTO"));                    
                    detalle1.setDESCRI(n1.getString("DESCRI"));                    
                    detalle1.setIMPORTE(n1.getDouble("IMPORTE"));                    
                    
                    detalle.add(detalle1);
                }
                //Agregamos el Detalle
                boleta1.setDetalle(detalle);
                
                //Agrega Boleta y Detalle
                boleta.add(boleta1);
            }
        } catch (Exception e) {
                System.out.println("Error! "+e);                 
        }
        return boleta;
    }

    @Override
    public List<Consulta> getConsultas(String NroDoc) {
        List<Consulta> consulta = new ArrayList<>();
        sql =   "select A.* from PENSIONWEB.ppe_t_consulta A\n" +
                "Where A.NRODOC = ?";
                
        try {
            PreparedStatement pst=reg.prepareStatement(sql);
            pst.setString(1, NroDoc);            
            ResultSet n=pst.executeQuery();            

            while(n.next()){
                Consulta consulta1 = new Consulta();
                consulta1.setConId(n.getInt("conId"));
                consulta1.setNroDoc(n.getString("nroDoc"));
                consulta1.setConAsu(n.getString("conAsu"));
                consulta1.setCondes(n.getString("conDes"));
                consulta1.setConfch(n.getString("conFch"));
                consulta1.setConest(n.getString("conEst"));
                
                //Agrega Respuestas
                List<Consulta_Respuesta> respuesta = new ArrayList<>();
                sql =   "select A.* from PENSIONWEB.ppe_t_consulta_rsp A\n" +
                        "Where A.conId = ?";
                
                PreparedStatement pst1=reg.prepareStatement(sql);
                pst1.setInt(1, consulta1.getConId());            
                ResultSet n1=pst1.executeQuery();
                while(n1.next()){
                    Consulta_Respuesta rsp1 = new Consulta_Respuesta();
                    rsp1.setConid(n1.getInt("conId"));
                    rsp1.setRspconid(n1.getInt("rspConId"));
                    rsp1.setRspcontip(n1.getString("rspConTip"));
                    rsp1.setRspconusu(n1.getString("rspConUsu"));
                    rsp1.setRspcondes(n1.getString("rspConDes"));
                    rsp1.setRspconfch(n1.getString("rspConFch"));
                    respuesta.add(rsp1);
                }
                //Agregamos el Detalle
                consulta1.setConRsp(respuesta);
                
                //Agrega Boleta y Detalle
                consulta.add(consulta1);
            }
        } catch (Exception e) {
                System.out.println("Error! "+e);                 
        }
        return consulta;
    }
    
}
