<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="ConfiguracionSistemaOp5.aspx.vb" Inherits="Presentacion.ConfiguracionSistemaOp5" %>
<%@ register assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
      <style>
        .dropzone-box .fa.fa-cloud-upload{margin-left:350px;}
        .form-horizontal .has-feedback .form-control-feedback{right:0px;}
        .has-feedback:not(.form-group) .form-control-feedback {top: 5px;}
        .claseTest {background-color: #008c9e !important;font-weight: normal;font-size:10px;text-transform:uppercase;}
        .dxgvHeader, .dxgvHeader table{color:#F1F1F1;}
      </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
   <div class="panel">  
                    <div class="panel-heading">
						<span class="panel-title" style="color:#17649A"><b>CONFIGURACIÓN GENERAL DEL SISTEMA</b></span>
                        <div class="panel-heading-controls">
							 <span class="panel-heading-text">
                                 <button class="btn btn-xs btn-info"><i class="fa fa-floppy-o fa-1x" aria-hidden="true" style="color:#f1f1f1"></i>&nbsp;GUARDAR CAMBIOS</button>
							</span> 
						</div>
                    </div>
				<div class="stat-panel">
					<div class="stat-row">
						<%--<div class="stat-cell col-sm-3 padding-sm-hr no-border-r valign-top bg-panel">
							<h4 class="padding-sm no-padding-t padding-xs-hr">OPCIONES</h4>
							<ul class="list-group no-margin">
								<li class="list-group-item no-border-hr padding-xs-hr no-bg no-border-radius">
									<a href="ConfiguracionSistema.aspx"><i class="fa fa fa-building-o text-primary"></i>&nbsp;&nbsp;&nbsp;EMPRESA</a> 
								</li> 
								<li class="list-group-item no-border-hr padding-xs-hr no-bg">
									<a href="ConfiguracionSistemaOp1.aspx"><i class="fa fa-gear text-primary"></i>&nbsp;&nbsp; 
									PROYECTOS</a> 
								</li>
								<li class="list-group-item no-border-hr no-border-b padding-xs-hr no-bg">
									<a href="ConfiguracionSistemaOp2.aspx"><i class="fa fa-map-marker text-primary"></i>&nbsp;&nbsp;&nbsp; 
									UBICACIONES</a> 
								</li>
                                <li class="list-group-item no-border-hr padding-xs-hr no-bg no-border-radius">
									<a href="ConfiguracionSistemaOp3.aspx"><i class="fa fa-calendar text-primary"></i>&nbsp;&nbsp;
                                    CALENDARIO</a> 
								</li>
								<li class="list-group-item no-border-hr padding-xs-hr no-bg">
									<a href="ConfiguracionSistemaOp4.aspx"><i class="fa fa-user text-primary"></i>&nbsp;&nbsp;&nbsp; 
									SUPERVISORES</a> 
								</li> 
                                <li class="list-group-item no-border-hr padding-xs-hr no-bg">
									<a href="#" style="font-size:12px"><strong><i class="fa fa-book text-primary"></i>&nbsp;&nbsp; 
									ÁREA/ESPECIALIDAD/CARGO</strong></a> 
								</li>
                                	<li class="list-group-item no-border-hr padding-xs-hr no-bg">
									<a href="ConfiguracionSistemaOp6.aspx"><i class="fa fa-flag text-primary"></i>&nbsp;&nbsp; 
									ACTIVIDADES DE CONTROL</a> 
								</li>
                                	<li class="list-group-item no-border-hr padding-xs-hr no-bg">
									<a href="ConfiguracionSistemaOp7.aspx"><i class="fa fa-tachometer text-primary"></i>&nbsp;&nbsp; 
									UNIDADES DE MEDIDA</a> 
								</li>
                                	<li class="list-group-item no-border-hr padding-xs-hr no-bg">
									<a href="ConfiguracionSistemaOp8.aspx"><i class="fa fa-lightbulb-o text-primary"></i>&nbsp;&nbsp;&nbsp; 
									ETAPAS CONSTRUCTIVAS</a> 
								</li>
								
							</ul>
						</div>--%>
						<div class="stat-cell col-sm-9 padding-sm">
                          
                            <h4><strong><i class="fa fa-book text-primary"></i>&nbsp;&nbsp;ÁREA/ESPECIALIDAD/CARGOS</strong></h4>
                            <p>En esta sección puedes editar la información relacionada a los cargos de tus proyectos en Foco.</p><hr />
							
                            <div class="panel-body bg-panel">
                            <div class="col-sm-6">
                                <label class="control-label">Selecciona Proyecto</label>
								<div class="form-group no-margin-hr">
									          <select class="form-control input-sm">
                                                   <option value="" selected >La Copa Negrete</option>
							                       <option value="">Proyecto 1 (Fuego)</option>
                                                   <option value="">Proyecto 2</option>
                                                   <option value="">Proyecto 3</option>                                                     
						                      </select>                                                  
		                                                    
                                </div>
							</div>
                                <div class="col-md-8">
                                    <label class="control-label">Edita Cargos</label>
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
                            AutoGenerateColumns= "false">

                            <Columns>
                            <dx:GridViewDataCheckColumn width="181" Caption= "Área" FieldName="area" Name="area" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                            <CellStyle CssClass="claseTestCelda" />
                            </dx:GridViewDataCheckColumn>

                            <dx:GridViewDataTextColumn width="225" Caption="Especialidad" FieldName="especialidad" Name="especialidad" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                                <cellstyle horizontalalign="Center">
                                </cellstyle>
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>

                                <dx:GridViewDataTextColumn width="250" Caption="Cargo" FieldName="car" Name="car" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                                <cellstyle horizontalalign="Center">
                                </cellstyle>
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>

                            </Columns>

                            <settingspager Mode="EndlessPaging" PageSize="25">
                            </settingspager>

                            <settings showfilterrow="True" ShowGroupPanel="false" VerticalScrollableHeight="260" HorizontalScrollBarMode="auto" VerticalScrollBarMode="auto" UseFixedTableLayout="true"/>
                            <SettingsEditing BatchEditSettings-ShowConfirmOnLosingChanges="false">
                            <BatchEditSettings ShowConfirmOnLosingChanges="False" />
                            </SettingsEditing>
                           
                        </dx:AspxGridView>

                                </div>
						
					        </div>
                            <hr />
                        <%--<div class="col-md-12">
                           <p class="pull-right">
                                    <span id="paso1btn" class="fa-stack fa-lg" style="margin-top:-10px;cursor:pointer">
                                    <i class="fa fa-arrow-circle-right fa-2x" aria-hidden="true" style="color:#008080"></i>
                                    </span> Guardar Cambios

                           </p>
                        </div>--%>
				    </div>
			    </div>
		    </div> 
		 </div>   
</asp:Content>