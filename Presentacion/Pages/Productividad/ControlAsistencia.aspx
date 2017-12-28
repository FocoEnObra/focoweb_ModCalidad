<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="ControlAsistencia.aspx.vb" Inherits="Presentacion.ControlAsistencia" %>
<%@ register assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <style>
                 .modal-alert .modal-header .fa{
            font-size:40px;
        }
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

    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
    <div class="panel">
        <div class="panel-heading">
			<span class="panel-title" style="color:#17649A"><b>CONTROL DE ASISTENCIA</b></span>
                <div class="panel-heading-controls">
							<span class="panel-heading-text">
                                <button id="" class="btn btn-xs btn-info tooltip-info"> <i class="fa fa-medkit fa-1x" aria-hidden="true" style="color:#f1f1f1"></i>&nbsp;&nbsp IMPORTAR</button>
                                <button id="" class="btn btn-xs btn-info tooltip-info"> <i class="fa fa-medkit fa-1x" aria-hidden="true" style="color:#f1f1f1"></i>&nbsp;&nbsp EXPORTAR</button>
							    <button id="modalOpen" class="btn btn-xs btn-info tooltip-info" data-toggle="modal" data-placement="left" title="" data-original-title="Aprende a usar el Importador de Asistencia" data-target="#uidemo-modals-alerts-success"> <i class="fa fa-medkit fa-1x" aria-hidden="true" style="color:#f1f1f1"></i>&nbsp;&nbsp ¿NECESITAS AYUDA?</button>
                            </span> 
				</div>

           
		</div>

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
                         <i class="fa fa-gear" aria-hidden="true" style="color:#008080"></i>                      
                             <label class="control-label">Selecciona Proyecto</label>
							     <div class="form-group no-margin-hr">
									          <select class="form-control input-sm">
                                                   <option value="" selected disabled>La Copa Negrete</option>
							                       <option value="">Proyecto 1 (Fuego)</option>
                                                   <option value="">Proyecto 2</option>
                                                   <option value="">Proyecto 3</option>                                                     
						                      </select>                                                  
		                         </div>
                              </div>
                            </div>
            </div>
                            <div class="col-md-2">
               <div class="panel form-horizontal">
                    <div class="panel-body" style="background-color:#f0f0f0">
                         <i class="fa fa-eye" aria-hidden="true" style="color:#008080"></i>                      
                             <label class="control-label">Selecciona Vista</label>
							     <div class="form-group no-margin-hr">
									          <select class="form-control input-sm">
							                       <option value="">Diaria</option>
                                                   <option value="">Semanal</option>
                                                   <option value="">Mensual</option>                                                     
						                      </select>                                                  
		                         </div>
                              </div>
                            </div>
            </div>
        <div class="col-md-2" >
              <script>
                                                      init.push(function () {
                                                          var options = {
                                                              todayBtn: "linked",
                                                              orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
                                                          }
                                                          $('#bs-datepicker-example').datepicker(options);

                                                          $('#bs-datepicker-component').datepicker();

                                                          var options2 = {
                                                              orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
                                                          }
                                                          $('#bs-datepicker-range').datepicker(options2);

                                                          $('#bs-datepicker-inline').datepicker();
                                                      });
				</script>
                                                       
                                                    
                                                                <div class="panel form-horizontal" >
                                 	                                <div class="panel-body" style="background-color:#f0f0f0">
                                                                          
                                                                       <i class="fa fa-calendar" aria-hidden="true" style="color:#008080"></i> <label class="control-label">Ingresa Fecha</label>
							                                                <div class="input-daterange form-group no-margin-hr" id="bs-datepicker-range">
							                                                    <input type="text" class="input-sm form-control" name="start" placeholder=" "/>
							                                                </div>
                                 	                                </div>
                                                                </div>
						                         </div>

              
                
                 <%--<div class="col-md-6">
        <div class="panel form-horizontal" >
            
            <div class="panel-body" style="background-color:#f0f0f0">
<div class="col-xs-4">
    <p class="text-xs" style="margin-bottom:2px;"><span class="label label-success ticket-label text-xs">P</span>&nbsp;&nbsp;Permiso</p>
    <p class="text-xs" style="margin-bottom:2px;"><span class="label label-success ticket-label text-xs">IN</span>&nbsp;&nbsp;Inasistencia </p>
    <p class="text-xs" style="margin-bottom:2px;"><span class="label label-success ticket-label text-xs">T</span>&nbsp;&nbsp;Traslado </p>
    

</div>
<div class="col-xs-4">
     <p class="text-xs" style="margin-bottom:2px;"><span class="label label-success ticket-label text-xs">L</span>&nbsp;&nbsp;Licencia </p>
    <p class="text-xs" style="margin-bottom:2px;"><span class="label label-success ticket-label text-xs">F</span>&nbsp;&nbsp;Personal Finiquitado </p>
    <p class="text-xs" style="margin-bottom:2px;"><span class="label label-success ticket-label text-xs">1</span>&nbsp;&nbsp;Día Trabajado </p>
</div>
                <div class="col-xs-4">
  <p class="text-xs" style="margin-bottom:2px;"><span class="label ticket-label text-xs" style="background-color:orange">&nbsp;&nbsp;</span>&nbsp;&nbsp;Sin Supervisor </p>
    <p class="text-xs" style="margin-bottom:2px;"><span class="label ticket-label text-xs" style="background-color:aquamarine">&nbsp;&nbsp;</span>&nbsp;&nbsp;Día Inhábil </p>
</div>

            </div>
        </div>
     </div>--%>
						                                                                        	  

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
                            <dx:GridViewDataCheckColumn width="60" Caption= "Editar" FieldName="chkbox" Name="chkbox" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                            <CellStyle CssClass="claseTestCelda" />
                            </dx:GridViewDataCheckColumn>
                            <dx:GridViewDataTextColumn width="130" Caption="Nombre Trabajador" FieldName="nombre" Name="nombre" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                                <cellstyle horizontalalign="Center">
                                </cellstyle>
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn width="80" Caption="Área" FieldName="area" Name="area" VisibleIndex="4">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                                <cellstyle horizontalalign="Center">
                                </cellstyle>
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="R.U.T" FieldName="rut" Name="rut" VisibleIndex="3">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                                <cellstyle horizontalalign="Center">
                                </cellstyle>
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Especialidad" FieldName="especialidad" Name="especialidad" VisibleIndex="5">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                                <cellstyle horizontalalign="Center">
                                </cellstyle>
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn width="130" Caption="Cargo" FieldName="cargo" Name="cargo" VisibleIndex="6">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                                <cellstyle horizontalalign="Center">
                                </cellstyle>
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn width="130" Caption="Supervisor" FieldName="supervisor" Name="supervisor" VisibleIndex="7">
                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest" />
                                <cellstyle horizontalalign="Center">
                                </cellstyle>
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>
                                <dx:GridViewBandColumn Caption="L" VisibleIndex="8" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1"  />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="1" VisibleIndex="0" FieldName="chkbox1" Name="chkbox1" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="M" VisibleIndex="9" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1"  />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="2" VisibleIndex="0" FieldName="chkbox2" Name="chkbox2" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="M" VisibleIndex="10" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="3" VisibleIndex="0" FieldName="chkbox3" Name="chkbox3" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="J" VisibleIndex="11" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="4" VisibleIndex="0" FieldName="chkbox4" Name="chkbox4" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="V" VisibleIndex="12" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="5" VisibleIndex="0" FieldName="chkbox5" Name="chkbox5" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="S" VisibleIndex="13" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="6" VisibleIndex="0" FieldName="chkbox6" Name="chkbox6" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>

                                <dx:GridViewBandColumn Caption="D" VisibleIndex="14">
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="7" VisibleIndex="0" FieldName="chkbox7" Name="chkbox7" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="L" VisibleIndex="15" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="8" VisibleIndex="0" FieldName="chkbox8" Name="chkbox8" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="M" VisibleIndex="16" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="9" VisibleIndex="0" FieldName="chkbox9" Name="chkbox9" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="M" VisibleIndex="17" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="10" VisibleIndex="0" FieldName="chkbox10" Name="chkbox10" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="J" VisibleIndex="18">
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="11" VisibleIndex="0"  FieldName="chkbox11" Name="chkbox11" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="V" VisibleIndex="19">
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="12" VisibleIndex="0"  FieldName="chkbox12" Name="chkbox12" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="S" VisibleIndex="20">
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="13" VisibleIndex="0"  FieldName="chkbox13" Name="chkbox13" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="D" VisibleIndex="21">
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="14" VisibleIndex="0" FieldName="chkbox14" Name="chkbox14" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="L" VisibleIndex="22" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1"  />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="15" VisibleIndex="0" FieldName="chkbox15" Name="chkbox15" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="M" VisibleIndex="23" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1"  />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="16" VisibleIndex="0" FieldName="chkbox16" Name="chkbox16" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="M" VisibleIndex="24" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="17" VisibleIndex="0" FieldName="chkbox17" Name="chkbox17" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="J" VisibleIndex="25" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="18" VisibleIndex="0" FieldName="chkbox18" Name="chkbox18" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="V" VisibleIndex="26" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="19" VisibleIndex="24" FieldName="chkbox19" Name="chkbox19" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="S" VisibleIndex="27" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="20" VisibleIndex="25" FieldName="chkbox20" Name="chkbox20" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>

                                <dx:GridViewBandColumn Caption="D" VisibleIndex="28">
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="21" VisibleIndex="26" FieldName="chkbox21" Name="chkbox21" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest1" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="L" VisibleIndex="29" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="22" VisibleIndex="27" FieldName="chkbox22" Name="chkbox22" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="M" VisibleIndex="30" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="23" VisibleIndex="28" FieldName="chkbox23" Name="chkbox23" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="M" VisibleIndex="31" >
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="24" VisibleIndex="29" FieldName="chkbox24" Name="chkbox24" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="J" VisibleIndex="32">
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="25" VisibleIndex="30"  FieldName="chkbox25" Name="chkbox25" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="V" VisibleIndex="33">
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="26" VisibleIndex="31"  FieldName="chkbox26" Name="chkbox26" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="S" VisibleIndex="34">
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="27" VisibleIndex="32"  FieldName="chkbox27" Name="chkbox27" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                                <dx:GridViewBandColumn Caption="D" VisibleIndex="35">
                                    <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                    <Columns>
                                        <dx:GridViewDataCheckColumn Caption="28" VisibleIndex="33" FieldName="chkbox28" Name="chkbox28" Width="40">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="claseTest2" />
                                        </dx:GridViewDataCheckColumn>
                                    </Columns>
                                </dx:GridViewBandColumn>
                            </Columns>
                            <settingspager Mode="EndlessPaging" PageSize="25">
                            </settingspager>
                            <settings showfilterrow="True" ShowGroupPanel="false" VerticalScrollableHeight="360" HorizontalScrollBarMode="auto" VerticalScrollBarMode="auto" UseFixedTableLayout="true"/>
                            <SettingsEditing BatchEditSettings-ShowConfirmOnLosingChanges="false">
                            <BatchEditSettings ShowConfirmOnLosingChanges="False" />
                            </SettingsEditing>
                            <%--<ClientSideEvents BatchEditEndEditing="grdTrab_BatchEditEndEditing"  />--%>
                        </dx:AspxGridView>

</div>

             </div>




         </div>
    </div>
</div>
   
            <script>
                $(document).ready(function () {
                    $('.modal').each(function () {
                        var src = $(this).find('iframe').attr('src');

                        $(this).on('click', function () {

                            $(this).find('iframe').attr('src', '');
                            $(this).find('iframe').attr('src', src);

                        });
                    });
                });
 </script>
        <script>
            $("#modalOpen").on("click", function (e) {
                e.preventDefault();
            });
    </script>
        <div id="uidemo-modals-alerts-success" class="modal modal-alert modal-info fade modal">
					<div class="modal-dialog" style="width:500px;max-height:350px">
						<div class="modal-content">
							<div class="modal-header">
								<i class="fa fa-caret-square-o-right"></i>
							</div>
							<div class="modal-title" style="margin-top:10px"><h4><strong>AYUDA CONTROL DE ASISTENCIA</strong></h4></div>
							<div class="modal-body">
                            <div class="row padding-sm">
                            <div style="position:relative;height:0;padding-bottom:75.0%"><iframe src="https://www.youtube.com/embed/pOAXkeIVK90?ecver=2" width="480" height="360" frameborder="0" style="position:absolute;width:100%;height:100%;left:0" allowfullscreen></iframe></div></div></div>
							
                            <div class="modal-footer">
                                <p>Revisa este breve video explicativo para aprender a usar esta sección. Si tienes más dudas, accede a nuestro <a href="#"> <strong>Panel de Ayuda.</strong></a></p>
								<button type="button" class="btn btn-info" data-dismiss="modal">ESTOY LISTO. CERRAR.</button>
							</div>
						</div> 
					</div> 
				</div> 
</asp:Content>

 
