<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">

        <title>Pensionista - La Caja</title>

        <script src="js/jquery-2.1.1.js" type="text/javascript"></script>
        <script language="javascript" type="text/javascript" src="js/popup.js"></script>

        <link href="http://www.lacaja.com.pe/html/themes/classic/images/favicon.ico" rel="Shortcut Icon" /> 
        <link href="styles/jquery-ui-1.9.1.custom.css" rel="stylesheet" type="text/css" /> 
        <link href="styles/general.css" rel="stylesheet" type="text/css" /> 
        <link href="styles/detallePensionistaBoleta.css" rel="stylesheet" type="text/css" /> 
        
        <link href="styles/popup.css" rel="stylesheet" type="text/css">
        
        <script type="text/javascript">
            /*<![CDATA[*/
            var Liferay = {Browser: {acceptsGzip: function() {
                return true
            }, getMajorVersion: function() {
                return 7
            }, getRevision: function() {
                return"537.77.4"
            }, getVersion: function() {
                return"7.0.5"
            }, isAir: function() {
                return false
            }, isChrome: function() {
                return false
            }, isFirefox: function() {
                return false
            }, isGecko: function() {
                return true
            }, isIe: function() {
                return false
            }, isIphone: function() {
                return false
            }, isLinux: function() {
                return false
            }, isMac: function() {
                return true
            }, isMobile: function() {
                return false
            }, isMozilla: function() {
                return false
            }, isOpera: function() {
                return false
            }, isRtf: function() {
                return true
            }, isSafari: function() {
                return true
            }, isSun: function() {
                return false
            }, isWap: function() {
                return false
            }, isWapXhtml: function() {
                return false
            }, isWebKit: function() {
                return true
            }, isWindows: function() {
                return false
            }, isWml: function() {
                return false
            }}, Data: {isCustomizationView: function() {
                return false
            }, notices: [null]}, ThemeDisplay: {getCDNDynamicResourcesHost: function() {
                return""
            }, getCDNHost: function() {
                return""
            }, getCompanyId: function() {
                return"10154"
            }, getCompanyGroupId: function() {
                return"10192"
            }, getUserId: function() {
                return"62506698"
            }, getUserName: function() {
                return"\u0056\u0049\u0043\u004e\u0054\u0045\u0040\u0048\u004f\u0054\u004d\u0041\u0049\u004c\u002e\u0043\u004f\u004d\u0020\u002e"
            }, getDoAsUserIdEncoded: function() {
                return""
            }, getPlid: function() {
                return"2112372"
            }, getLayoutId: function() {
                return"80"
            }, getLayoutURL: function() {
                return"/web/guest/pensionista"
            }, isPrivateLayout: function() {
                return"false"
            }, getParentLayoutId: function() {
                return"78"
            }, getScopeGroupId: function() {
                return"10180"
            }, getScopeGroupIdOrLiveGroupId: function() {
                return"10180"
            }, getParentGroupId: function() {
                return"10180"
            }, isImpersonated: function() {
                return false
            }, isSignedIn: function() {
                return true
            }, getDefaultLanguageId: function() {
                return"es_ES"
            }, getLanguageId: function() {
                return"es_ES"
            }, isAddSessionIdToURL: function() {
                return false
            }, isFreeformLayout: function() {
                return false
            }, isStateExclusive: function() {
                return false
            }, isStateMaximized: function() {
                return false
            }, isStatePopUp: function() {
                return false
            }, getPathContext: function() {
                return""
            }, getPathImage: function() {
                return"/image"
            }, getPathJavaScript: function() {
                return"/html/js"
            }, getPathMain: function() {
                return"/c"
            }, getPathThemeImages: function() {
                return"http://www.lacaja.com.pe/html/themes/classic/images"
            }, getPathThemeRoot: function() {
                return"/html/themes/classic"
            }, getURLControlPanel: function() {
                return"/group/control_panel?doAsGroupId=10180&refererPlid=2112372"
            }, getURLHome: function() {
                return"http://www.lacaja.com.pe/web/guest"
            }, getSessionId: function() {
                return"AD76D67AC73C9DBFD7DB60C9B8774AC8"
            }, getPortletSetupShowBordersDefault: function() {
                return true
            }}, PropsValues: {NTLM_AUTH_ENABLED: false}};
    
            var themeDisplay = Liferay.ThemeDisplay;
            Liferay.AUI = {getBaseURL: function() {
                    return"http://www.lacaja.com.pe/html/js/aui/"
                }, getCombine: function() {
                    return false
                }, getComboPath: function() {
                    return"/combo/?browserId=other&minifierType=&languageId=es_ES&b=6101&t=1361924259000&p=/html/js&"
                }, getFilter: function() {
                    return"raw"
                }, getJavaScriptRootPath: function() {
                    return"/html/js"
                }, getLangPath: function() {
                    return"aui_lang.jsp?browserId=other&themeId=classic&colorSchemeId=01&languageId=es_ES&b=6101&t=1361924259000"
                }, getRootPath: function() {
                    return"/html/js/aui/"
                }};
            window.YUI_config = {base: Liferay.AUI.getBaseURL(), comboBase: Liferay.AUI.getComboPath(), fetchCSS: true, filter: Liferay.AUI.getFilter(), root: Liferay.AUI.getRootPath(), useBrowserConsole: false};
            Liferay.authToken = "fphsz34K";
            Liferay.currentURL = "\x2fweb\x2fguest\x2fpensionista";
            Liferay.currentURLEncoded = "%2Fweb%2Fguest%2Fpensionista";/*]]>*/
        </script>         
        <!-- <script type="text/javascript">/*<![CDATA[*/Liferay.Portlet.list = ["accesopensionistas_WAR_AccesoAplicacionesportlet"];Liferay._editControlsState = "visible";/*]]>*/</script> -->
        <link class="lfr-css-file" href="http&#x3a;&#x2f;&#x2f;www&#x2e;lacaja&#x2e;com&#x2e;pe&#x2f;html&#x2f;themes&#x2f;classic&#x2f;css&#x2f;main&#x2e;css&#x3f;browserId&#x3d;other&#x26;themeId&#x3d;classic&#x26;languageId&#x3d;es_ES&#x26;b&#x3d;6101&#x26;t&#x3d;1380837678000" rel="stylesheet" type="text/css" />         
        <style type="text/css"></style> 
    </head> 
    <body class="blue yui3-skin-sam controls-visible guest-site signed-in public-page site"> 
        <div id="wrapper"> 
            <div id="topper" > 
                <ul class="lfr-dock-list"> 
                    <li class="intranet"> 
                        <p>Lima, 
                            <script>/*<![CDATA[*/
                                var meses = new Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
                                var f = new Date();
                                document.write(f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear());/*]]>*/
                            </script> 
                        </p> 
                    </li> 
                    <li class="MapaSitio"> 
                        <img width="18px"src="images/mapaSitio.png"/> <a href="/web/guest/mapa-de-sitio" rel="external">Mapa de Sitio</a> 
                    </li> 
                </ul> 
            </div> 
            <a href="#main-content" id="skip-to-content">Saltar al contenido</a> 
            <header id="banner" role="banner"> 
                <div id="heading"> 
                    <h1 class="site-title"> <a class="logo custom-logo" href="index.jsp" title="Ir a La Caja"> <img alt="La Caja" height="60" src="images/layout_set_logo.png" width="222" /> </a> </h1> 
                    <h2 class="page-title"> <span>Pensionista</span> </h2> 
                </div> 
                <div id ="buscador"> 
                    <form action="http://www.lacaja.com.pe/web/guest/pensionista?p_p_auth=OmYwzgx2&amp;p_p_id=77&amp;p_p_lifecycle=0&amp;p_p_state=maximized&amp;p_p_mode=view&amp;p_p_col_count=1&amp;_77_struts_action=%2Fjournal_content_search%2Fsearch" class="aui-form" method="post" name="_77_fm" onSubmit="submitForm(this); return false;"> 
                        <span class="aui-field aui-field-text aui-field-inline lfr-search-keywords"> 
                            <span class="aui-field-content"> 
                                <span class="aui-field-element "> 
                                    <input class="aui-field-input aui-field-input-text"  id="keywords"  name="keywords"    title="Buscar contenido web" type="text" value="Buscar&#x2e;&#x2e;&#x2e;"  onBlur="if (this.value == '') {
                                        this.value = '\u0042\u0075\u0073\u0063\u0061\u0072\u002e\u002e\u002e';}" onFocus="if (this.value == '\u0042\u0075\u0073\u0063\u0061\u0072\u002e\u002e\u002e') {
                                        this.value = '';}" size="30"  /> 
                                </span> 
                            </span> 
                        </span> 
                        <span class="aui-field aui-field-text aui-field-inline lfr-search-button"> 
                            <span class="aui-field-content"> 
                                <span class="aui-field-element "> 
                                    <input class="aui-field-input aui-field-input-text"  id="search"  name="search"     type="image"   alt="search" src="http://www.lacaja.com.pe/html/themes/classic/images/common/search.png"  /> 
                                </span> 
                            </span> 
                        </span> 
                    </form> 
                </div> 
                <nav class="sort-pages modify-pages" id="navigation"> 
                    <h1> 
                        <span>Navegaci�n</span> 
                    </h1> 
                    <ul> 
                        <li> 
                            <a href="index.jsp" ><span> Inicio</span></a> 
                        </li> 
                        <li> 
                            <a href="http://www.lacaja.com.pe/web/guest/informacion-institucional" ><span> Transparencia</span></a> 
                            <ul class="child-menu"> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/quienes-somos" >Quienes Somos</a> </li>
                                <li> <a href="http://www.lacaja.com.pe/web/guest/mision-y-vision" >Misi�n y Visi�n</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/unidades-de-negocio/informacion-institucional" >Portal Corporativo</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/memoria-institucional" >Memoria Institucional</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/gestion-administracion-y-finanzas" >Gesti�n-Gerencia de Administraci�n y Finanzas</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/gestion-gerencia-de-pension" >Gesti�n - Gerencia de Pensiones</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/organizacion" >Organizaci�n</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/trabaja-con-nosotros" >Trabaja con Nosotros</a> </li> 
                            </ul> 
                        </li> 
                        <li> 
                            <a href="http://www.lacaja.com.pe/web/guest/orientacion-al-usuario" ><span> Orientaci�n al Usuario</span></a> 
                            <ul class="child-menu"> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/beneficios" >Beneficios</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/link-a-otras-instituciones" >Link a otras instituciones</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/lo-que-el-afiliado-debe-saber" >Lo que el afiliado debe saber</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/consultas-frecuentes" >Consultas Frecuentes</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/tramites-mas-comunes" >Tramites mas Comunes</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/aprende-a-como-acceder-a-tus-boletas" >Aprende como Acceder a tus Boletas</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/valida-tu-boleta-en-el-validador" >Valida tu Boleta en el Validador</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/convenios" >Convenios</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/cuanto-somos-" >Cuantos Somos?</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/encuestas" >Encuestas</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/reporte-sbs" >Reporte SBS</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/entidades-crediticias" >Entidades Crediticias</a> </li> 
                            </ul> 
                        </li> 
                        <li> 
                            <a href="http://www.lacaja.com.pe/web/guest/publicaciones" ><span> Publicaciones</span></a> 
                            <ul class="child-menu"> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/legislacion" >Legislaci�n</a> </li> 
                                <li> <a href="http://www.lacaja.com.pe/web/guest/otros" >Otros</a> </li> 
                            </ul> 
                        </li> 
                        <li class="selected"> 
                            <a href="http://www.lacaja.com.pe/web/guest/mis-aplicaciones" ><span> Mis Aplicaciones</span></a> 
                            <ul class="child-menu"> 
                                <li class="selected"> <a href="http://www.lacaja.com.pe/web/guest/pensionista" >Pensionista</a> </li> 
                            </ul> 
                        </li> 
                    </ul> 
                </nav> 
            </header>             
            <div id="content"> 
                <nav class="site-breadcrumbs" id="breadcrumbs"> 
                    <h1> <span>Camino de migas</span> </h1> 
                    <ul class="breadcrumbs breadcrumbs-horizontal lfr-component"> 
                        <li class="first"><span><a href="/web/guest">La Caja</a></span></li>
                        <li><span><a href="http://www.lacaja.com.pe/web/guest/mis-aplicaciones" >Mis Aplicaciones</a></span></li>
                        <li class="last"><span><a href="http://www.lacaja.com.pe/web/guest/pensionista" >Pensionista</a></span></li> 
                    </ul> 
                </nav> 
                <div class="portlet-boundary portlet-boundary_103_ portlet-static portlet-static-end " id="p_p_id_103_" > 
                    <span id="p_103"></span> 
                    <div class="portlet-body"> </div> 
                </div> 
                <div class="columns-1" id="main-content" role="main"> 
                    <div class="portlet-layout"> 
                        <div class="portlet-column portlet-column-only" id="column-1"> 
                            <div class="portlet-dropzone portlet-column-content portlet-column-content-only" id="layout-column_column-1"> 
                                <div class="portlet-boundary portlet-boundary_accesopensionistas_WAR_AccesoAplicacionesportlet_ portlet-static portlet-static-end accesopensionistas-portlet " id="p_p_id_accesopensionistas_WAR_AccesoAplicacionesportlet_" > 
                                    <span id="p_accesopensionistas_WAR_AccesoAplicacionesportlet"></span> 
                                    <div class="portlet-body"> 
                                        <section class="portlet" id="portlet_accesopensionistas_WAR_AccesoAplicacionesportlet"> 
                                            <header class="portlet-topper"> 
                                                <h1 class="portlet-title"> 
                                                    <span > <img class="icon" id="rjus" src="/AccesoAplicaciones-portlet/icon.png" alt="" /> </span> 
                                                    <span class="portlet-title-text">Acceso Pensionistas</span> 
                                                </h1> 
                                                <menu class="portlet-topper-toolbar" id="portlet-topper-toolbar_accesopensionistas_WAR_AccesoAplicacionesportlet" type="toolbar"> </menu> 
                                            </header> 
                                            <div class="portlet-content" style="overflow: hidden;"> 
                                                <div class=" portlet-content-container" style=""> 
                                                    <div class="portlet-body"> 
                                                        <div style="height: 100%">                                                             
                                                            <table>
                                                                <c:forEach items="${benef}" var="benef"> 
                                                                    <c:set var="vCodPer" scope="session" value="${benef.CODPER}"/>
                                                                    <c:set var="vNroDoc" scope="session" value="${benef.NRODOC}"/>                                                                    
                                                                    <tr>
                                                                        <td>
                                                                            <div class="north" style="background-color:#31659C; left: 0px; top: 0px; width: 450px; height: 27px;">                                                            
                                                                                <div style="margin-top:0.5em;padding-left: 0.6em;color: #FFF;height: 1em;">		
                                                                                    BIENVENIDO(A), <strong>${benef.APENOM}</strong>		
                                                                                </div>                                                                
                                                                            </div>                                                            
                                                                        </td>
                                                                        <td>
                                                                            <div class="north" style="background-color:#31659C; left: 0px; top: 0px; width: 450px; height: 27px;">                                                            
                                                                                <div style="margin-top:0.5em;padding-left: 0.6em;color: #FFF;height: 1em;">		
                                                                                    C�digo: <strong>${benef.CODPER}</strong>		
                                                                                </div>                                                                
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </c:forEach>
                                                            </table>
                                                            <br>
                                                            <div id="menu" class="west" style="height: 227px; width: 160px; float: left; top: 32px;">
                                                                <div id="menuPrincipal" class="ui-accordion ui-widget ui-helper-reset" role="tablist">
                                                                    <h3 class="ui-accordion-header ui-helper-reset ui-state-default ui-accordion-header-active ui-state-active ui-corner-top ui-accordion-icons" role="tab" id="ui-accordion-menuPrincipal-header-0" aria-controls="ui-accordion-menuPrincipal-panel-0" aria-selected="true" tabindex="0">
                                                                            <span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-s"></span><a href="#">Opciones</a>
                                                                    </h3>
                                                                    <table style="border-collapse: collapse; width: 100%; display: table;" class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom ui-accordion-content-active" id="ui-accordion-menuPrincipal-panel-0" aria-labelledby="ui-accordion-menuPrincipal-header-0" role="tabpanel" aria-expanded="true" aria-hidden="false">
                                                                        <tbody>                                                                            
                                                                            <c:forEach items="${benef}" var="ben">  
                                                                                <c:forEach items="${ben.opcUsu}" var="opc">
                                                                                    <tr><td class="itemMenu" ><a href="${opc.opcLnk}?vCodPer=<c:out value="${vCodPer}"/>&vNroDoc=<c:out value="${vNroDoc}"/>">${opc.opcDes}</td></tr>
                                                                                </c:forEach>
                                                                            </c:forEach>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                            <div id="pensionistaMain" style="width: 800px; float: left; top: 32px;">
                                                                <c:set var="vConId" value="vConId" scope="session" />
                                                                <table class="causanteRepresentanteTabla" style="width: 90%; border-collapse: collapse; font-size: 11px;background-color: white;" align="center">
                                                                    <tbody>
                                                                        <tr class="filaSuperiorCausanteRepresentante"><td colspan="5">Consultas:</td></tr>
                                                                        <tr class="filaSuperiorCausanteRepresentante"><td>Nro.Consulta</td><td>Asunto</td><td>Descripci�n</td><td>Fecha</td><td>Estado</td></tr>
                                                                        <tr>
                                                                            <c:forEach items="${consultas}" var="con">
                                                                                <c:if test="${con.conId==vConId}">
                                                                                    <td align="center">${con.conId}</td>
                                                                                    <td>${con.conAsu}</td>
                                                                                    <td>${con.condes}</td>
                                                                                    <td>${con.confch}</td>
                                                                                    <td>${con.conest}</td>            
                                                                                </c:if>
                                                                            </c:forEach>
                                                                        </tr>                        
                                                                    </tbody>
                                                                </table> 
                                                                <br><br>
                                                                <table class="descuentosTabla" style="width: 60%; border-collapse: collapse; font-size: 11px;background-color: white;" align="center">
                                                                    <tbody>
                                                                        <tr class="cabeceraDescuentos"><td colspan="5"><b>Respuestas</b></td></tr>
                                                                        <tr class="cabeceraDescuentos"><td>Id</td><td>Tipo</td><td>Descripci�n</td><td>Usuario</td><td>Fecha</td></tr>
                                                                        <tr>
                                                                            <td>
                                                                            <c:forEach var="cab" items="${consultas}">                                         
                                                                                <c:forEach var="det" items="${cab.conRsp}" varStatus="loop">
                                                                                    <c:if test="${cab.conId==vConId}">
                                                                                        <tr>
                                                                                            <td style="border: none;">${det.rspconid}</td>
                                                                                            <td style="border: none;">${det.rspcontip}</td>
                                                                                            <td style="border: none;">${det.rspcondes}</td>
                                                                                            <td style="border: none;">${det.rspconusu}</td>
                                                                                            <td style="border: none;">${det.rspconfch}</td>
                                                                                        </tr>  
                                                                                    </c:if>
                                                                                </c:forEach>                                        
                                                                            </c:forEach>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>                                                                
                                                            </div>
                                                            <div style="width: 150px;float: right; ">
                                                                <div id="pop">
                                                                    <div id="close">x</div>
                                                                    <div id="contentPop">
                                                                        <form action="ConsultaServlet" method="POST" class="aui-form ">
                                                                            <table align="center">                                                                            
                                                                                <tr>
                                                                                    <td>Descripci�n :</td>
                                                                                    <td><textarea name="txtRespuesta" rows="5" cols="22"></textarea></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <input name="vNroDoc" type="hidden" value="<c:out value="${vNroDoc}"/>">
                                                                                        <input name="vCodPer" type="hidden" value="<c:out value="${vCodPer}"/>">
                                                                                        <input name="vConId" type="hidden" value="<c:out value="${vConId}"/>">
                                                                                    </td>
                                                                                    <td align="right"><br><input type="submit" name="btnSubmit" value="Grabar"></td>                                                                                
                                                                                </tr>
                                                                            </table>
                                                                        </form>
                                                                    </div>
                                                                </div>                                                            
                                                                <button onclick="show();">Nueva Respuesta</button> 
                                                            </div>
                                                        </div> 
                                                    </div> 
                                                </div> 
                                            </div> 
                                        </section> 
                                    </div> 
                                </div> 
                            </div> 
                        </div> 
                    </div> 
                </div> 
                <form action="#" id="hrefFm" method="post" name="hrefFm"> 
                    <span></span> 
                </form> 
            </div> 
            <footer id="footer" role="contentinfo"> 
                <p class="powered-by"> <p> </p> 
                <div id="f_der"> UniversidadUPC DSD_Proyecto_Developers 2014</div> 
            </footer> 
        </div> 
    </body> 
    <script src="/AccesoAplicaciones-portlet/js/main.js?browserId=other&amp;languageId=es_ES&amp;b=6101&amp;t=1403887200000" type="text/javascript"></script> 
    <script type="text/javascript">/*<![CDATA[*/Liferay.Util.addInputFocus();Liferay.Portlet.runtimePortletIds = ["103"];/*]]>*/</script> 
    <script type="text/javascript">
        /*<![CDATA[*/
        Liferay.Portlet.onLoad({canEditTitle: false, columnPos: 0, isStatic: "end", namespacedId: "p_p_id_103_", portletId: "103", refreshURL: "\x2fc\x2fportal\x2frender_portlet\x3fp_l_id\x3d2112372\x26p_p_id\x3d103\x26p_p_lifecycle\x3d0\x26p_t_lifecycle\x3d0\x26p_p_state\x3dnormal\x26p_p_mode\x3dview\x26p_p_col_id\x3d\x26p_p_col_pos\x3d0\x26p_p_col_count\x3d0\x26p_p_isolated\x3d1\x26currentURL\x3d\x252Fweb\x252Fguest\x252Fpensionista"});
        Liferay.Portlet.onLoad({canEditTitle: false, columnPos: 0, isStatic: "end", namespacedId: "p_p_id_accesopensionistas_WAR_AccesoAplicacionesportlet_", portletId: "accesopensionistas_WAR_AccesoAplicacionesportlet", refreshURL: "\x2fc\x2fportal\x2frender_portlet\x3fp_l_id\x3d2112372\x26p_p_id\x3daccesopensionistas_WAR_AccesoAplicacionesportlet\x26p_p_lifecycle\x3d0\x26p_t_lifecycle\x3d0\x26p_p_state\x3dnormal\x26p_p_mode\x3dview\x26p_p_col_id\x3dcolumn-1\x26p_p_col_pos\x3d0\x26p_p_col_count\x3d1\x26p_p_isolated\x3d1\x26currentURL\x3d\x252Fweb\x252Fguest\x252Fpensionista"});
        AUI().use("aui-base", "liferay-menu", "liferay-notice", "liferay-poller", "liferay-session", function(a) {
            (function() {
                Liferay.Util.addInputType();
                Liferay.Portlet.ready(function(b, c) {
                    Liferay.Util.addInputType(c)
                })
            })();
            (function() {
                new Liferay.Menu();
                var b = Liferay.Data.notices;
                for (var c = 1; c < b.length; c++) {
                    new Liferay.Notice(b[c])
                }
                Liferay.Poller.init({encryptedUserId: "+ojWOchjZxg/HjzPn9lx5Q==", supportsComet: false})
            })();
            (function() {
                Liferay.Session = new Liferay.SessionBase({autoExtend: true, sessionLength: 30, redirectOnExpire: false, redirectUrl: "http://www.lacaja.com.pe/web/guest", warningLength: 1});
                Liferay.Session.plug(Liferay.SessionDisplay)
            })()
        });/*]]>*/
    </script> 
    <script src="http://www.lacaja.com.pe/html/themes/classic/js/main.js?browserId=other&amp;languageId=es_ES&amp;b=6101&amp;t=1380837678000" type="text/javascript"></script> 
    <script type="text/javascript"></script> 
</html> 