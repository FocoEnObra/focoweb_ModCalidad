<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="ControlFichas.aspx.vb" Inherits="Presentacion.ControlFichas" %>
<%@ register assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .claseTest {
            background-color: #005F6B !important;
            font-weight: normal;
            font-size:10px;
            /*color:#F1F1F1 !important;*/
            text-transform:uppercase;
        }

         .dxgvHeader, .dxgvHeader table{
             color:#F1F1F1;
         }

       .dxgvHeader{
           background-color:#008c9e;
           border: 1px solid #005F6B;
       }

       .leftLabel{
           display:inline-block
       }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
    <div class="panel">
        <%--<div class="panel-heading">
			<span class="panel-title" style="color:#17649A"><b>CONTROL DE FICHAS</b></span>
                <div class="panel-heading-controls">
							<span class="panel-heading-text">
                                <button class="btn btn-xs btn-info"> <i class="fa fa-user fa-1x" aria-hidden="true" style="color:#f1f1f1"></i>&nbsp;&nbsp LISTADO TRABAJADORES</button>
                                <button id="modalBtn" class="btn btn-xs btn-info" data-toggle="modal" data-target="#uidemo-modals-alerts-info"> <i class="fa fa-book fa-1x" aria-hidden="true" style="color:#f1f1f1"></i>&nbsp;&nbsp LEYENDAS</button>
                                <button class="btn btn-xs btn-info"><i class="fa fa-table fa-1x" aria-hidden="true" style="color:#f1f1f1"></i>&nbsp;&nbsp EXPORTAR ARCHIVO</button>
                                <button class="btn btn-xs btn-danger"> <i class="fa fa-medkit fa-1x" aria-hidden="true" style="color:#f1f1f1"></i>&nbsp;&nbsp AYUDA</button>
							</span> 
				</div>

           
		</div>--%>

        <div class="row">
          <div class="col-md-12" style="margin-top:7px;"> 
              <div class="col-md-12"><div class="col-md-12">
              <%--<p>Bienvenido al registro de asistencia</p>--%>
              </div>
          </div>
        </div>
            <div class="col-md-12">
            <div class="col-md-3">
               <div class="panel form-horizontal">
                    <div class="panel-body" style="background-color:#f0f0f0">
                        
                        <i class="fa fa-gear fa-spin" aria-hidden="true" style="color:#008080"></i>                      
                            <label id="leftLabel" class="control-label">Proyecto</label>
							     <div class="form-group no-margin-hr" style="margin-top:10px">
									          <select class="form-control input-sm">
                                                   <option value="" selected >La Copa Negrete</option>
							                       <option value="">Proyecto 1 (Fuego)</option>
                                                   <option value="">Proyecto 2</option>
                                                   <option value="">Proyecto 3</option>                                                     
						                      </select>                                                  
		                                                    
                                </div>
                              </div>
                            </div>
            </div>

              
						                                                                        	  

<div class="col-md-12">
    <dx:ASPxGridView
                            id="grdDetalle"
                            runat="server"
                            theme="Default"
                            width="100%"
                            enablerowscache="False"
                            font-size="X-Small"
                            clientinstancename="grdDetalle"    
                            enablecallbacks="False" 
                            enabletheming="True"
                            SettingsEditing-Mode="Batch"
                            Settings-ShowStatusBar = "Hidden"
                            AutoGenerateColumns= "false"
                            >
                            <Columns>
                            <dx:GridViewDataCheckColumn width="130" Caption= "RUT" FieldName="rut" Name="rut" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                            <CellStyle CssClass="claseTestCelda" />
                            </dx:GridViewDataCheckColumn>
                            <dx:GridViewDataTextColumn width="130" Caption="Nombre" FieldName="nombre" Name="nombre" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                                <cellstyle horizontalalign="Center">
                                </cellstyle>
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn width="103" Caption="Fecha Ingreso" FieldName="fingreso" Name="fingreso" VisibleIndex="4">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                                <cellstyle horizontalalign="Center">
                                </cellstyle>
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn width="103" Caption="Fecha Término" FieldName="ftermino" Name="ftermino" VisibleIndex="3">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                                <cellstyle horizontalalign="Center">
                                </cellstyle>
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Área" FieldName="area" Name="area" VisibleIndex="5">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                                <cellstyle horizontalalign="Center">
                                </cellstyle>
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn width="130" Caption="Especialidad" FieldName="especialidad" Name="especialidad" VisibleIndex="6">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                                <cellstyle horizontalalign="Center">
                                </cellstyle>
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn width="130" Caption="Cargo" FieldName="cargo" Name="cargo" VisibleIndex="7">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                                <cellstyle horizontalalign="Center">
                                </cellstyle>
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>
                                 <dx:GridViewDataTextColumn width="130" Caption="Costo Empresa" FieldName="cempresa" Name="cempresa" VisibleIndex="7">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                                <cellstyle horizontalalign="Center">
                                </cellstyle>
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn width="130" Caption="N° Ficha Externo" FieldName="nfexterno" Name="nfexterno" VisibleIndex="7">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                                <cellstyle horizontalalign="Center">
                                </cellstyle>
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>
                            </Columns>
                            <settingspager Mode="EndlessPaging" PageSize="25">
                            </settingspager>
                            <settings showfilterrow="True" ShowGroupPanel="false" VerticalScrollableHeight="360" HorizontalScrollBarMode="auto" VerticalScrollBarMode="auto" UseFixedTableLayout="true"/>
                            <SettingsEditing BatchEditSettings-ShowConfirmOnLosingChanges="false">
                            <BatchEditSettings ShowConfirmOnLosingChanges="False" />
                            </SettingsEditing>
                            
                        </dx:AspxGridView>

</div>

             </div>




         </div>
    </div>
</div>
  <%--  <script>
        $("#cargaLeyenda").on("click", function (e) {
            e.preventDefault();

            // the rest of your code ...
        });
    </script>--%>
    
</asp:Content>

 
