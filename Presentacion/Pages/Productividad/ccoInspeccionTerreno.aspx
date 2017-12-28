<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="ccoInspeccionTerreno.aspx.vb" Inherits="Presentacion.Formulario_web11" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
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
     <script type="text/javascript">
        function OnToolbarItemClick(s, e) {
            if(IsCustomExportToolbarCommand(e.item.name)) {
                e.processOnServer=true;
                e.usePostBack=true;
            }
        }
        function IsCustomExportToolbarCommand(command) {
            return command == "CustomExportToXLS" || command == "CustomExportToXLSX";
        }
    </script>
     <div class="panel">  
                    <div class="panel-heading">
						<span class="panel-title" style="color:#17649A"><b>LISTADO DE ACTIVIDADES DE CONTROL DE CALIDAD.</b></span></div>
				<div class="stat-panel">
					<div class="stat-row">
					
						<div class="stat-cell col-sm-12 padding-sm ">
                            <%--<div class="alert alert-dark alert-info">
							<button type="button" class="close" data-dismiss="alert">×</button>
							<strong>Nota:</strong> Recuerda guardar los cambios que vayas realizando!
						    </div>--%>
                            <p>En esta sección puedes editar la información relacionada con las etapas constructivas de tus proyectos en Foco.</p><hr />
							<asp:ScriptManager ID="ScriptManager" runat="server" />
                             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                 <contenttemplate>
                                     <div class="panel-body bg-panel">
                                      <div class="col-sm-12">
                                        <label class="control-label">Selecciona Proyecto</label>
								        <div class="form-group no-margin-hr">
									                  &nbsp;<dx:ASPxComboBox ID="ddlObra" runat="server" AutoPostBack="True" DataSourceID="sqlObra" TextField="NomAbr_Obr" Theme="MetropolisBlue" ValueField="ID_OBR" ValueType="System.Int32">
                                                      </dx:ASPxComboBox>
                                                      <asp:SqlDataSource ID="sqlObra" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SELECT [ID_OBR], [NomAbr_Obr] FROM [OBRAS] WHERE ([Vigente_Obr] = @Vigente_Obr)">
                                                          <SelectParameters>
                                                              <asp:Parameter DefaultValue="1" Name="Vigente_Obr" Type="String" />
                                                          </SelectParameters>
                                                      </asp:SqlDataSource>
                                        </div>
							         </div>  
                                      <div class="col-md-12">
                                            <label class="control-label">Listado de Actividades Controladas</label>
                                            <br />
                                 
                                            <dx:ASPxGridView ID="gridActividades"  ClientInstanceName="grid" runat="server" AutoGenerateColumns="False" DataSourceID="sqlCalidad" EnableTheming="True" KeyFieldName="ID_ACC_PLT" Theme="MetropolisBlue" Width="100%">
                                               <Toolbars>
           <%-- <dx:GridViewToolbar ItemAlign="Right" EnableAdaptivity="true">
                <Items>
                    <dx:GridViewToolbarItem Command="New"  Text ="Nuevo"/>
                    <dx:GridViewToolbarItem Command="Edit" text="editar"/>
                    <dx:GridViewToolbarItem Command="Delete" Text="Eliminar" />
                    <dx:GridViewToolbarItem Command="Refresh" BeginGroup="true" Text="Actualizar" />
                    <dx:GridViewToolbarItem Text="Exportar a" Image-IconID="actions_download_16x16office2013" BeginGroup="true">
                        <Items>
                            <dx:GridViewToolbarItem Command="ExportToPdf" />
                            <dx:GridViewToolbarItem Command="ExportToDocx" />
                            <dx:GridViewToolbarItem Command="ExportToRtf" />
                            <dx:GridViewToolbarItem Command="ExportToCsv" />
                            <dx:GridViewToolbarItem Command="ExportToXls" Text="Export to XLS(DataAware)" />
                            <dx:GridViewToolbarItem Name="CustomExportToXLS" Text="Export to XLS(WYSIWYG)" Image-IconID="export_exporttoxls_16x16office2013" >
                                <Image IconID="export_exporttoxls_16x16office2013">
                                </Image>
                            </dx:GridViewToolbarItem>
                            <dx:GridViewToolbarItem Command="ExportToXlsx" Text="Export to XLSX(DataAware)" />
                            <dx:GridViewToolbarItem Name="CustomExportToXLSX" Text="Export to XLSX(WYSIWYG)" Image-IconID="export_exporttoxlsx_16x16office2013" >
                                <Image IconID="export_exporttoxlsx_16x16office2013">
                                </Image>
                            </dx:GridViewToolbarItem>
                        </Items>
                        <Image IconID="actions_download_16x16office2013">
                        </Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="true">
                        <Template>
                            <dx:ASPxButtonEdit ID="tbToolbarSearch" runat="server" NullText="Buscar..." Height="100%">
                                <Buttons>
                                    <dx:SpinButtonExtended Image-IconID="find_find_16x16gray" />
                                </Buttons>
                            </dx:ASPxButtonEdit>
                        </Template>
                    </dx:GridViewToolbarItem>
                </Items>
            </dx:GridViewToolbar>--%>
       
        </Toolbars>

                                                   <Settings ShowGroupPanel="True" />
                                                <SettingsBehavior AllowFocusedRow="True" />
      
                                                <SettingsSearchPanel ShowClearButton="True" Visible="True" />

        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />

                                                <SettingsDetail ExportMode="Expanded" ShowDetailRow="True" AllowOnlyOneMasterRowExpanded="True" />
                                                <Templates>
                                                    <DetailRow>
                                                         <div style="padding: 3px 3px 2px 3px">
                            <dx:ASPxPageControl runat="server" ID="pageControl" Width="100%" EnableCallBacks="True" ActiveTabIndex="0" EnableTheming="True"  Theme="Mulberry" OnActiveTabChanged="pageControl_ActiveTabChanged">
                                <TabPages>
                                    <dx:TabPage Text="RECINTO" Visible="true">
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxGridView ID="gridRecinto" runat="server" Theme="MetropolisBlue" DataSourceID="sqlRecinto" AutoGenerateColumns="False" KeyFieldName="ID_UCO" OnBeforePerformDataSelect="gridRecinto_BeforePerformDataSelect" Width="100%">
                                                  <Toolbars>
                                                       <dx:GridViewToolbar ItemAlign="Right" EnableAdaptivity="true">
                                                            <Items>
                                                                <dx:GridViewToolbarItem Command="New"  Text ="Nuevo"/>
                                                                <dx:GridViewToolbarItem Command="Edit" text="editar"/>
                                                                <dx:GridViewToolbarItem Command="Delete" Text="Eliminar" />
                                                                <dx:GridViewToolbarItem Command="Refresh" BeginGroup="true" Text="Actualizar" />
                                                                <dx:GridViewToolbarItem Text="Exportar a" Image-IconID="actions_download_16x16office2013" BeginGroup="true">
                                                                    <Items>
                                                                        <dx:GridViewToolbarItem Command="ExportToPdf" />
                                                                        <dx:GridViewToolbarItem Command="ExportToDocx" />
                                                                        <dx:GridViewToolbarItem Command="ExportToRtf" />
                                                                        <dx:GridViewToolbarItem Command="ExportToCsv" />
                                                                        <dx:GridViewToolbarItem Command="ExportToXls" Text="Export to XLS(DataAware)" />
                                                                        <dx:GridViewToolbarItem Name="CustomExportToXLS" Text="Export to XLS(WYSIWYG)" Image-IconID="export_exporttoxls_16x16office2013" >
                                                                            <Image IconID="export_exporttoxls_16x16office2013">
                                                                            </Image>
                                                                        </dx:GridViewToolbarItem>
                                                                        <dx:GridViewToolbarItem Command="ExportToXlsx" Text="Export to XLSX(DataAware)" />
                                                                        <dx:GridViewToolbarItem Name="CustomExportToXLSX" Text="Export to XLSX(WYSIWYG)" Image-IconID="export_exporttoxlsx_16x16office2013" >
                                                                            <Image IconID="export_exporttoxlsx_16x16office2013">
                                                                            </Image>
                                                                        </dx:GridViewToolbarItem>
                                                                    </Items>
                                                                    <Image IconID="actions_download_16x16office2013">
                                                                    </Image>
                                                                </dx:GridViewToolbarItem>
                                                                <dx:GridViewToolbarItem BeginGroup="true">
                                                                    <Template>
                                                                        <dx:ASPxButtonEdit ID="tbToolbarSearch" runat="server" NullText="Buscar..." Height="100%">
                                                                            <Buttons>
                                                                                <dx:SpinButtonExtended Image-IconID="find_find_16x16gray" />
                                                                            </Buttons>
                                                                        </dx:ASPxButtonEdit>
                                                                    </Template>
                                                                </dx:GridViewToolbarItem>
                                                            </Items>
            </dx:GridViewToolbar>
                                                        </Toolbars>
                                                    
                                                    
                                                    <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                                                    <SettingsAdaptivity AdaptiveColumnPosition="Left" AdaptivityMode="HideDataCellsWindowLimit" AllowOnlyOneAdaptiveDetailExpanded="True">
                                                    </SettingsAdaptivity>
                                                    <Templates>
                                                        <DetailRow>
                                                            <asp:SqlDataSource ID="sqlRegistrosDetalle" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_QA_ACC_PLT_BUSCAR_REGISTROS" SelectCommandType="StoredProcedure">
                                                                <SelectParameters>
                                                                    <asp:SessionParameter DefaultValue="" Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
                                                                    <asp:SessionParameter DefaultValue="" Name="ID_UCO" SessionField="ID_UCO" Type="Int64" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                            <dx:ASPxGridView ID="ASPxGridView4" runat="server" AutoGenerateColumns="False" DataSourceID="sqlRegistrosDetalle" KeyFieldName="ID_ACC_REG" OnBeforePerformDataSelect="ASPxGridView4_BeforePerformDataSelect" Theme="MetropolisBlue" Width="100%">
                                                                <SettingsEditing Mode="PopupEditForm" EditFormColumnCount="5">
                                                                </SettingsEditing>
                                                                <SettingsPopup>
                                                                    <EditForm Modal="True" Width="100%">
                                                                        <SettingsAdaptivity VerticalAlign="WindowCenter" />
                                                                    </EditForm>
                                                                    <CustomizationWindow ShowShadow="True" />
                                                                    <CustomizationDialog>
                                                                        <SettingsAdaptivity MinWidth="1200px" />
                                                                    </CustomizationDialog>
                                                                </SettingsPopup>
                                                                <EditFormLayoutProperties AlignItemCaptionsInAllGroups="True" ColCount="2" RequiredMarkDisplayMode="None">
                                                                    <Items>
                                                                        <dx:GridViewColumnLayoutItem ColumnName="NOMBRE_ACC">
                                                                        </dx:GridViewColumnLayoutItem>
                                                                        <dx:GridViewColumnLayoutItem ColumnName="ETAPA">
                                                                        </dx:GridViewColumnLayoutItem>
                                                                        <dx:GridViewColumnLayoutItem ColumnName="ESTADO">
                                                                        </dx:GridViewColumnLayoutItem>
                                                                        <dx:GridViewColumnLayoutItem ColumnName="ULTIMO_REG">
                                                                        </dx:GridViewColumnLayoutItem>
                                                                        <dx:GridViewColumnLayoutItem ColumnName="FECHA_CREA">
                                                                        </dx:GridViewColumnLayoutItem>
                                                                        <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Right" Width="100%">
                                                                        </dx:EditModeCommandLayoutItem>
                                                                    </Items>
                                                                    <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" />
                                                                    <SettingsItemCaptions HorizontalAlign="Left" Location="Top" VerticalAlign="Middle" />
                                                                    <SettingsItems Width="100%" />
                                                                </EditFormLayoutProperties>
                                                                <Columns>
                                                                    <dx:GridViewCommandColumn VisibleIndex="0">
                                                                    </dx:GridViewCommandColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="ID_ACC_REG" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                        <EditFormSettings Visible="False" />
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="ACTIVIDAD CONTROL DE CALIDAD" FieldName="NOMBRE_ACC" ShowInCustomizationForm="True" VisibleIndex="2">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="ETAPA CONSTRUCTIVA" FieldName="ETAPA" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="3">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="NOMBRE_UCO" ShowInCustomizationForm="True" Visible="False" VisibleIndex="4">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="TIPOLOGIA" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="5">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="ESTADO" FieldName="ESTADO" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="6">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="ULTIMO" FieldName="ULTIMO_REG" ShowInCustomizationForm="True" VisibleIndex="7">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataDateColumn Caption="CREACIÓN" FieldName="FECHA_CREA" ShowInCustomizationForm="True" VisibleIndex="8">
                                                                    </dx:GridViewDataDateColumn>
                                                                </Columns>
                                                                   <SettingsSearchPanel CustomEditorID="tbToolbarSearch" />
                                                                        <SettingsBehavior AllowFocusedRow="true" />
                                                                        <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="DataAware" />
                                                                        <Styles Header-Wrap="True">
                                                                            <Header Wrap="True">
                                                                            </Header>
                                                                </Styles>
                                                                        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />
                                                            </dx:ASPxGridView>
                                                        </DetailRow>
                                                        <EditForm>
                                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="Infomación ACC" ShowCollapseButton="true" Theme="Metropolis" Width="100%" HorizontalAlign="Center">
                                                                <PanelCollection>
                                                                    <dx:PanelContent runat="server">
                                                                       
                                                                        
                                                                        <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Selecione una fecha" Theme="Material">
                                                                        </dx:ASPxLabel>
                                                                        <dx:ASPxDateEdit ID="txtFecha" runat="server" OnDateChanged="txtFecha_DateChanged" Theme="Moderno">
                                                                        </dx:ASPxDateEdit>
                                                                       
                                                                        
                                                                        <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Selecione un Recinto" Theme="Material">
                                                                        </dx:ASPxLabel>
                                                                        <dx:ASPxComboBox ID="dll_uco" runat="server" DataSourceID="sqlRecinto" OnSelectedIndexChanged="dll_uco_SelectedIndexChanged" TextField="NOMBRE_UCO" Theme="MaterialCompact" ValueField="ID_UCO" ValueType="System.Int16">
                                                                        </dx:ASPxComboBox>
                                                                        <br />
                                                                        <dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" Text="Guardar " Theme="Material">
                                                                        </dx:ASPxButton>
                                                                        <br />
                                                                    </dx:PanelContent>
                                                                </PanelCollection>
                                                            </dx:ASPxRoundPanel>
                                                            listado de chekeo<br />
                                                            <dx:ASPxGridView ID="ASPxGridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" KeyFieldName="ID_PLT_CHK" Theme="MetropolisBlue" Width="100%">
                                                                <SettingsAdaptivity>
                                                                    <AdaptiveDetailLayoutProperties>
                                                                        <Items>
                                                                            <dx:GridViewColumnLayoutItem ColumnName="ITEM">
                                                                            </dx:GridViewColumnLayoutItem>
                                                                            <dx:GridViewColumnLayoutItem ColumnName="NOMBRE_CHK">
                                                                            </dx:GridViewColumnLayoutItem>
                                                                            <dx:GridViewColumnLayoutItem ColumnName="CRITERIO_CONTROL">
                                                                            </dx:GridViewColumnLayoutItem>
                                                                            <dx:GridViewColumnLayoutItem ColumnName="ESPECIFICACION_CHK">
                                                                            </dx:GridViewColumnLayoutItem>
                                                                        </Items>
                                                                    </AdaptiveDetailLayoutProperties>
                                                                </SettingsAdaptivity>
                                                                <SettingsPager Mode="ShowAllRecords">
                                                                </SettingsPager>
                                                                <SettingsEditing Mode="PopupEditForm">
                                                                </SettingsEditing>
                                                                <Settings ShowFooter="True" ShowGroupButtons="False" />
                                                                <SettingsBehavior AllowFixedGroups="True" AutoExpandAllGroups="True" />
                                                                <SettingsDataSecurity AllowDelete="False" AllowEdit="False" />
                                                                <SettingsPopup>
                                                                    <EditForm HorizontalAlign="Center" Modal="True" Width="100%">
                                                                    </EditForm>
                                                                    <CustomizationWindow MinHeight="100%" MinWidth="100%" Width="100%" />
                                                                </SettingsPopup>
                                                                <Columns>
                                                                    <dx:GridViewDataTextColumn FieldName="ID_PLT_CHK" ReadOnly="True" VisibleIndex="3" Visible="False">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="ITEM" ReadOnly="True" VisibleIndex="0">
                                                                        <EditFormSettings Visible="False" />
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="NOMBRE_GRP_CHK" VisibleIndex="4" Caption="GRUPO" FixedStyle="Left" GroupIndex="0" SortIndex="0" SortOrder="Ascending" Visible="False">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="NOMBRE_CHK" VisibleIndex="1" Caption="ELEMENTO DE VERIFICACIÓN">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="ESPECIFICACION_CHK" VisibleIndex="5" Caption="OBSERVACIÓN">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="CRITERIO_CONTROL" VisibleIndex="2" Caption="CRITERIO CONTROL">
                                                                    </dx:GridViewDataTextColumn>
                                                                </Columns>
                                                                <Styles>
                                                                    <GroupRow Font-Bold="True">
                                                                    </GroupRow>
                                                                    <GroupPanel BackColor="#0066FF" Font-Bold="True" ForeColor="White">
                                                                    </GroupPanel>
                                                                </Styles>
                                                            </dx:ASPxGridView>
                                                            <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server">
                                                            </dx:ASPxGridViewExporter>
                                                            <br />
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_QA_ACC_PLT_LISTA_CHEQUEO" SelectCommandType="StoredProcedure">
                                                                <SelectParameters>
                                                                    <asp:SessionParameter Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int64" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </EditForm>
                                                    </Templates>
                                                    <SettingsEditing Mode="PopupEditForm" EditFormColumnCount="3">
                                                    </SettingsEditing>
                                                    <SettingsDataSecurity AllowDelete="False" AllowEdit="False" />
                                                    <SettingsPopup>
                                                        <EditForm Modal="True" PopupAnimationType="Slide" ShowMaximizeButton="True" Width="100%">
                                                            <SettingsAdaptivity MinHeight="70%" MinWidth="70%" Mode="Always" VerticalAlign="WindowCenter" />
                                                        </EditForm>
                                                        <CustomizationWindow ShowShadow="True" AllowResize="False" CloseOnEscape="True" ResizingMode="Postponed" ShowFooter="True" />
                                                        <CustomizationDialog>
                                                            <SettingsAdaptivity MinWidth="700px" />
                                                        </CustomizationDialog>
                                                    </SettingsPopup>
                                                    <SettingsSearchPanel Visible="True" />
                                                    <Columns>
                                                        <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                        </dx:GridViewCommandColumn>
                                                        <dx:GridViewBandColumn Caption="RECINTOS" ShowInCustomizationForm="True" VisibleIndex="2">
                                                            <Columns>
                                                                <dx:GridViewDataTextColumn Caption="APROBADOS" FieldName="APROBADO_REG" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="TOTALES" FieldName="TOT_REG" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="RECHAZADO" FieldName="RECHAZA_REG" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="PENDIENTES" FieldName="PEND_REG" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="3">
                                                                </dx:GridViewDataTextColumn>
                                                            </Columns>
                                                        </dx:GridViewBandColumn>
                                                        <dx:GridViewBandColumn Caption="REGISTROS" ShowInCustomizationForm="True" VisibleIndex="3">
                                                            <Columns>
                                                                <dx:GridViewDataTextColumn Caption="NOMBRE" FieldName="NOMBRE_UCO" ShowInCustomizationForm="True" VisibleIndex="0">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="TIPOLOGIA" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2">
                                                                </dx:GridViewDataTextColumn>
                                                            </Columns>
                                                        </dx:GridViewBandColumn>
                                                        <dx:GridViewDataCheckColumn Caption="CERRADO" FieldName="RECINTO_CERRADO" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="4">
                                                        </dx:GridViewDataCheckColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ID_UCO" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                        </dx:GridViewDataTextColumn>
                                                    </Columns>
                                                    <SettingsSearchPanel CustomEditorID="tbToolbarSearch" />
                                                    <SettingsBehavior AllowFocusedRow="true" />
                                                    <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="DataAware" />
                                                    <Styles Header-Wrap="True">
                                                        <Header Wrap="True">
                                                        </Header>
                                                    </Styles>
                                                    <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />
                                                </dx:ASPxGridView>
                                                <asp:SqlDataSource ID="sqlRecinto" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_QA_ACC_PLT_BUSCAR_RECINTOS" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:SessionParameter Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int64" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>
                                    <dx:TabPage Text="REGISTRO DE CALIDAD" Visible="true">
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxGridView ID="ASPxGridView3" runat="server" Theme="MetropolisBlue" AutoGenerateColumns="False" DataSourceID="sqlRegistros2" KeyFieldName="ID_ACC_REG" Width="100%">
                                                    <Columns>
                                                        <dx:GridViewDataTextColumn FieldName="ID_ACC_REG" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="NOMBRE_ACC" ShowInCustomizationForm="True" VisibleIndex="1">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ETAPA" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2">
                                                            <EditFormSettings Visible="False" />
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="NOMBRE_UCO" ShowInCustomizationForm="True" VisibleIndex="3">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="TIPOLOGIA" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="4">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ESTADO" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="5">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ULTIMO_REG" ShowInCustomizationForm="True" VisibleIndex="6">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataDateColumn FieldName="FECHA_CREA" ShowInCustomizationForm="True" VisibleIndex="7">
                                                        </dx:GridViewDataDateColumn>
                                                    </Columns>
                                                </dx:ASPxGridView>
                                       
                                                <asp:SqlDataSource ID="sqlRegistros2" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_QA_ACC_PLT_BUSCAR_REGISTROS" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:SessionParameter Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
                                                        <asp:SessionParameter Name="ID_UCO" SessionField="ID_UCO" Type="Int64" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                       
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>
                                </TabPages>
                                <Border BorderColor="#17649A" />
                            </dx:ASPxPageControl>
                        </div>
                                                    </DetailRow>
                                                </Templates>
                                                <SettingsPager EnableAdaptivity="true" />

                                                <Settings ShowFooter="true" />
                                                <SettingsBehavior AllowFocusedRow="true" />
      
                                                <SettingsSearchPanel CustomEditorID="tbToolbarSearch" />

                                                <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="DataAware" />
      
                                                <Columns>
                                                    <dx:GridViewCommandColumn SelectAllCheckboxMode="Page" ShowSelectCheckbox="True" VisibleIndex="0">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewBandColumn Caption="ACTIVIDADES CONTROL DE CALIDAD" VisibleIndex="1">
                                                        <HeaderStyle BackColor="#17649A" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                                                        <Columns>
                                                            <dx:GridViewDataTextColumn Caption="ID" FieldName="ID_ACC_PLT" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0" Visible="False">
                                                                <EditFormSettings Visible="False" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="VERSIÓN" FieldName="VERSION_ACC" ShowInCustomizationForm="True" VisibleIndex="2">
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="NOMBRE" FieldName="NOMBRE_ACC" ShowInCustomizationForm="True" VisibleIndex="3">
                                                                <CellStyle HorizontalAlign="Left" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="N°" FieldName="NUM_ACC" ShowInCustomizationForm="True" VisibleIndex="1">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="ETAPA" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="4">
                                                                <CellStyle HorizontalAlign="Left" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                        </Columns>
                                                    </dx:GridViewBandColumn>
                                                    <dx:GridViewBandColumn Caption="RECINTOS" VisibleIndex="2">
                                                        <HeaderStyle BackColor="#17649A" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                                                        <Columns>
                                                            <dx:GridViewDataTextColumn Caption="TOTAL" FieldName="UCO_TOT" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0">
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="APROBADOS" FieldName="UCO_APROB" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1">
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="PENDIENTE" FieldName="UCO_PEND" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2">
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                        </Columns>
                                                    </dx:GridViewBandColumn>
                                                    <dx:GridViewBandColumn Caption="REGISTROS DE CALIDAD" VisibleIndex="8">
                                                        <HeaderStyle BackColor="#17649A" ForeColor="White" />
                                                        <Columns>
                                                            <dx:GridViewDataTextColumn Caption="TOTAL" FieldName="REG_TOT" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0">
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="APROBADOS" FieldName="REG_APROB" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1">
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="PENDIENTES" FieldName="REG_PEND" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="3">
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="RECHAZADOS" FieldName="REG_RECHAZA" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2">
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn> 
                                                        </Columns>
                                                    </dx:GridViewBandColumn>
                                                </Columns>

        <TotalSummary>
            <dx:ASPxSummaryItem FieldName="UCO_TOT" SummaryType="Count" /> 
            <dx:ASPxSummaryItem FieldName="UCO_TOT" SummaryType="Sum" />
            <dx:ASPxSummaryItem FieldName="UCO_TOT" SummaryType="Min" />
            <dx:ASPxSummaryItem FieldName="UCO_TOT" SummaryType="Average" />
            <dx:ASPxSummaryItem FieldName="UCO_TOT" SummaryType="Max" />
        </TotalSummary>
       
                                                <Styles Header-Wrap="True">
                                                    <Header Wrap="True">
                                                    </Header>
                                                </Styles>
       
                                            </dx:ASPxGridView>

                                            <asp:SqlDataSource ID="sqlCalidad" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" DeleteCommand="DELETE FROM [QA_ACC_PLT] WHERE [ID_ACC_PLT] = @original_ID_ACC_PLT" InsertCommand="INSERT INTO [QA_ACC_PLT] ([CODIGO_ACC], [NOMBRE_ACC], [NUM_ACC], [VERSION_ACC], [ID_OBR], [ID_ETA], [CODIGO_ACT], [NOMBRE_ACT], [ESTADO_ACC], [FECHA_CREA], [ID_USU_CREA]) VALUES (@CODIGO_ACC, @NOMBRE_ACC, @NUM_ACC, @VERSION_ACC, @ID_OBR, @ID_ETA, @CODIGO_ACT, @NOMBRE_ACT, @ESTADO_ACC, @FECHA_CREA, @ID_USU_CREA)" OldValuesParameterFormatString="original_{0}" SelectCommand="SP_QA_ACC_PLT_BUSCAR" UpdateCommand="UPDATE [QA_ACC_PLT] SET [CODIGO_ACC] = @CODIGO_ACC, [NOMBRE_ACC] = @NOMBRE_ACC, [NUM_ACC] = @NUM_ACC, [VERSION_ACC] = @VERSION_ACC, [ID_OBR] = @ID_OBR, [ID_ETA] = @ID_ETA, [CODIGO_ACT] = @CODIGO_ACT, [NOMBRE_ACT] = @NOMBRE_ACT, [ESTADO_ACC] = @ESTADO_ACC, [FECHA_CREA] = @FECHA_CREA, [ID_USU_CREA] = @ID_USU_CREA WHERE [ID_ACC_PLT] = @original_ID_ACC_PLT" SelectCommandType="StoredProcedure">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="original_ID_ACC_PLT" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="CODIGO_ACC" Type="String" />
                                                    <asp:Parameter Name="NOMBRE_ACC" Type="String" />
                                                    <asp:Parameter Name="NUM_ACC" Type="Int32" />
                                                    <asp:Parameter Name="VERSION_ACC" Type="Int32" />
                                                    <asp:Parameter Name="ID_OBR" Type="Int64" />
                                                    <asp:Parameter Name="ID_ETA" Type="Int64" />
                                                    <asp:Parameter Name="CODIGO_ACT" Type="String" />
                                                    <asp:Parameter Name="NOMBRE_ACT" Type="String" />
                                                    <asp:Parameter Name="ESTADO_ACC" Type="Int16" />
                                                    <asp:Parameter Name="FECHA_CREA" Type="DateTime" />
                                                    <asp:Parameter Name="ID_USU_CREA" Type="Int64" />
                                                </InsertParameters>
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="ddlObra" Name="ID_OBR" PropertyName="Value" Type="Int64" />
                                                    <asp:Parameter DefaultValue="-1" Name="ID_ACC_PLT" Type="Int32" />
                                                    <asp:Parameter DefaultValue="0" Name="SOLO_PEND" Type="Int32" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="CODIGO_ACC" Type="String" />
                                                    <asp:Parameter Name="NOMBRE_ACC" Type="String" />
                                                    <asp:Parameter Name="NUM_ACC" Type="Int32" />
                                                    <asp:Parameter Name="VERSION_ACC" Type="Int32" />
                                                    <asp:Parameter Name="ID_OBR" Type="Int64" />
                                                    <asp:Parameter Name="ID_ETA" Type="Int64" />
                                                    <asp:Parameter Name="CODIGO_ACT" Type="String" />
                                                    <asp:Parameter Name="NOMBRE_ACT" Type="String" />
                                                    <asp:Parameter Name="ESTADO_ACC" Type="Int16" />
                                                    <asp:Parameter Name="FECHA_CREA" Type="DateTime" />
                                                    <asp:Parameter Name="ID_USU_CREA" Type="Int64" />
                                                    <asp:Parameter Name="original_ID_ACC_PLT" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>

                                        </div>
					                 </div>
                                 </contenttemplate>
                            </asp:UpdatePanel>
                          
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
