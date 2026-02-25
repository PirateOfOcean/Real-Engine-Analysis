classdef REASIS < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        ParametersTab                   matlab.ui.container.Tab
        DuctburnerTurbofanPanel         matlab.ui.container.Panel
        T_t17KEditField                 matlab.ui.control.NumericEditField
        T_t17KEditFieldLabel            matlab.ui.control.Label
        eta_DBEditField                 matlab.ui.control.NumericEditField
        eta_DBEditFieldLabel            matlab.ui.control.Label
        pi_DBEditField                  matlab.ui.control.NumericEditField
        pi_DBEditFieldLabel             matlab.ui.control.Label
        c_p_DBJkgcircKEditField         matlab.ui.control.NumericEditField
        c_p_DBLabel                     matlab.ui.control.Label
        gamma_DBEditField               matlab.ui.control.NumericEditField
        gamma_DBEditFieldLabel          matlab.ui.control.Label
        SeperatedTrubofanPanel          matlab.ui.container.Panel
        alphaEditField                  matlab.ui.control.NumericEditField
        alphaEditFieldLabel             matlab.ui.control.Label
        pi_fnEditField                  matlab.ui.control.NumericEditField
        pi_fnEditFieldLabel             matlab.ui.control.Label
        fracP_0P_19EditField            matlab.ui.control.NumericEditField
        fracP_0P_19EditFieldLabel       matlab.ui.control.Label
        DefaultValuesButton             matlab.ui.control.Button
        CalculateButton                 matlab.ui.control.Button
        ENGINETYPESELECTIONButtonGroup  matlab.ui.container.ButtonGroup
        Image_Mixed                     matlab.ui.control.Image
        Image_Fan                       matlab.ui.control.Image
        Image_Jet                       matlab.ui.control.Image
        TURBOJETButton                  matlab.ui.control.RadioButton
        MIXEDButton                     matlab.ui.control.RadioButton
        TURBOFANButton                  matlab.ui.control.RadioButton
        MixedPanel                      matlab.ui.container.Panel
        M_6EditField                    matlab.ui.control.NumericEditField
        M_6EditFieldLabel               matlab.ui.control.Label
        pi_M_maxEditField               matlab.ui.control.NumericEditField
        pi_M_maxEditFieldLabel          matlab.ui.control.Label
        AirInletDiffuserExhaustPanel    matlab.ui.container.Panel
        T_0KcircEditField               matlab.ui.control.NumericEditField
        T_0KcircEditFieldLabel          matlab.ui.control.Label
        P_0P_9EditField                 matlab.ui.control.NumericEditField
        P_0P_9Label                     matlab.ui.control.Label
        M_0EditField                    matlab.ui.control.NumericEditField
        M_0EditFieldLabel               matlab.ui.control.Label
        pi_nEditField                   matlab.ui.control.NumericEditField
        pi_nEditFieldLabel              matlab.ui.control.Label
        pi_d_maxEditField               matlab.ui.control.NumericEditField
        pi_d_maxLabel                   matlab.ui.control.Label
        BurnerPanel                     matlab.ui.container.Panel
        h_PRkJkgEditField               matlab.ui.control.NumericEditField
        h_PRkJkgEditFieldLabel          matlab.ui.control.Label
        pi_bEditField                   matlab.ui.control.NumericEditField
        pi_bEditFieldLabel              matlab.ui.control.Label
        eta_bEditField                  matlab.ui.control.NumericEditField
        eta_bEditFieldLabel             matlab.ui.control.Label
        T_t4circKEditField              matlab.ui.control.NumericEditField
        T_t4circKEditFieldLabel         matlab.ui.control.Label
        FanPanel                        matlab.ui.container.Panel
        pi_fEditField                   matlab.ui.control.NumericEditField
        pi_fEditFieldLabel              matlab.ui.control.Label
        e_fEditField                    matlab.ui.control.NumericEditField
        e_fEditFieldLabel               matlab.ui.control.Label
        TurbinePanel                    matlab.ui.container.Panel
        eta_mEditField                  matlab.ui.control.NumericEditField
        eta_mEditFieldLabel             matlab.ui.control.Label
        c_ptJkgcircKEditField           matlab.ui.control.NumericEditField
        c_ptJkgcircKEditFieldLabel      matlab.ui.control.Label
        e_tEditField                    matlab.ui.control.NumericEditField
        e_tEditFieldLabel               matlab.ui.control.Label
        gamma_tEditField                matlab.ui.control.NumericEditField
        gamma_tEditFieldLabel           matlab.ui.control.Label
        CompressorPanel                 matlab.ui.container.Panel
        pi_cEditField                   matlab.ui.control.NumericEditField
        pi_cEditFieldLabel              matlab.ui.control.Label
        e_cEditField                    matlab.ui.control.NumericEditField
        e_cEditFieldLabel               matlab.ui.control.Label
        gamma_cEditField                matlab.ui.control.NumericEditField
        gamma_cEditFieldLabel           matlab.ui.control.Label
        c_pcJkgcircKEditField           matlab.ui.control.NumericEditField
        c_pcJkgcircKEditFieldLabel      matlab.ui.control.Label
        AfterburnerPanel                matlab.ui.container.Panel
        pi_ABEditField                  matlab.ui.control.NumericEditField
        pi_ABEditFieldLabel             matlab.ui.control.Label
        eta_ABEditField                 matlab.ui.control.NumericEditField
        eta_ABEditFieldLabel            matlab.ui.control.Label
        gamma_ABEditField               matlab.ui.control.NumericEditField
        gamma_ABLabel                   matlab.ui.control.Label
        T_t7circKEditField              matlab.ui.control.NumericEditField
        T_t7circKEditFieldLabel         matlab.ui.control.Label
        c_p_ABJkgcircKEditField         matlab.ui.control.NumericEditField
        c_pABJkgcircKLabel              matlab.ui.control.Label
        AfterburnerSwitch               matlab.ui.control.Switch
        AfterburnerSwitchLabel          matlab.ui.control.Label
        Image_AfterBurner               matlab.ui.control.Image
        ParametricConclusionTab         matlab.ui.container.Tab
        Panel_4                         matlab.ui.container.Panel
        SLabel                          matlab.ui.control.Label
        fracFdotm_0Label_3              matlab.ui.control.Label
        CONCLUSIONSPanel                matlab.ui.container.Panel
        M_16Label                       matlab.ui.control.Label
        fracT_t16T_t6Label              matlab.ui.control.Label
        fracP_t16P_t6Label              matlab.ui.control.Label
        M_19Label                       matlab.ui.control.Label
        fracT_19T_0Label                matlab.ui.control.Label
        fracP_t19P_19Label              matlab.ui.control.Label
        alphaLabel                      matlab.ui.control.Label
        pi_MLabel                       matlab.ui.control.Label
        tau_MLabel                      matlab.ui.control.Label
        tau_fLabel                      matlab.ui.control.Label
        tau_tLabel                      matlab.ui.control.Label
        pi_rLabel                       matlab.ui.control.Label
        eta_cLabel                      matlab.ui.control.Label
        eta_ThLabel_3                   matlab.ui.control.Label
        fLabel                          matlab.ui.control.Label
        f_oLabel                        matlab.ui.control.Label
        M_9Label                        matlab.ui.control.Label
        tau_dLabel                      matlab.ui.control.Label
        tau_lambdaLabel                 matlab.ui.control.Label
        tau_lambda_DBLabel              matlab.ui.control.Label
        pi_tLabel                       matlab.ui.control.Label
        eta_fLabel                      matlab.ui.control.Label
        eta_OvLabel_3                   matlab.ui.control.Label
        f_DBLabel                       matlab.ui.control.Label
        fracT_9T_0Label                 matlab.ui.control.Label
        fracP_t9P_9Label                matlab.ui.control.Label
        eta_tLabel                      matlab.ui.control.Label
        eta_PrLabel_3                   matlab.ui.control.Label
        f_ABLabel                       matlab.ui.control.Label
        tau_lambda_ABLabel              matlab.ui.control.Label
        pi_dLabel                       matlab.ui.control.Label
        tau_cLabel                      matlab.ui.control.Label
        tau_rLabel                      matlab.ui.control.Label
        GraphsTab                       matlab.ui.container.Tab
        tau_tLabel_2                    matlab.ui.control.Label
        alphaLabel_2                    matlab.ui.control.Label
        SLabel_2                        matlab.ui.control.Label
        tau_tvspi_cLabel                matlab.ui.control.Label
        pi_cLabel_8                     matlab.ui.control.Label
        ClearButton_7                   matlab.ui.control.Button
        PlotButton_7                    matlab.ui.control.Button
        alphavspi_cLabel                matlab.ui.control.Label
        pi_cLabel_7                     matlab.ui.control.Label
        ClearButton_6                   matlab.ui.control.Button
        PlotButton_6                    matlab.ui.control.Button
        Label_2                         matlab.ui.control.Label
        eta_Ovvspi_cLabel               matlab.ui.control.Label
        eta_Prvspi_cLabel               matlab.ui.control.Label
        Svspi_cLabel                    matlab.ui.control.Label
        eta_Thvspi_cLabel               matlab.ui.control.Label
        pi_cLabel_3                     matlab.ui.control.Label
        eta_OvLabel_2                   matlab.ui.control.Label
        eta_PrLabel_2                   matlab.ui.control.Label
        eta_ThLabel_2                   matlab.ui.control.Label
        pi_cLabel_2                     matlab.ui.control.Label
        pi_cLabel                       matlab.ui.control.Label
        pi_cLabel_4                     matlab.ui.control.Label
        ClearButton_5                   matlab.ui.control.Button
        PlotButton_5                    matlab.ui.control.Button
        ClearButton_4                   matlab.ui.control.Button
        PlotButton_4                    matlab.ui.control.Button
        ClearButton_3                   matlab.ui.control.Button
        PlotButton_3                    matlab.ui.control.Button
        ClearButton_2                   matlab.ui.control.Button
        PlotButton_2                    matlab.ui.control.Button
        ClearButton                     matlab.ui.control.Button
        fracFdotm_0Label_2              matlab.ui.control.Label
        Fdotm_0vspi_cLabel              matlab.ui.control.Label
        pi_cLabel_6                     matlab.ui.control.Label
        Label                           matlab.ui.control.Label
        Panel_3                         matlab.ui.container.Panel
        pi_cInterval                    matlab.ui.control.NumericEditField
        intervalEditField_2Label        matlab.ui.control.Label
        pi_cStart                       matlab.ui.control.NumericEditField
        pi_cLabel_5                     matlab.ui.control.Label
        pi_cEnd                         matlab.ui.control.NumericEditField
        toEditField_2Label              matlab.ui.control.Label
        Panel_2                         matlab.ui.container.Panel
        GraphParametersLabel            matlab.ui.control.Label
        MachInterval                    matlab.ui.control.NumericEditField
        intervalEditFieldLabel          matlab.ui.control.Label
        MachStart                       matlab.ui.control.NumericEditField
        M_0EditField_2Label             matlab.ui.control.Label
        MachEnd                         matlab.ui.control.NumericEditField
        toEditFieldLabel                matlab.ui.control.Label
        PlotButton                      matlab.ui.control.Button
        UIAxes2_3                       matlab.ui.control.UIAxes
        UIAxes2_2                       matlab.ui.control.UIAxes
        UIAxes5                         matlab.ui.control.UIAxes
        UIAxes4                         matlab.ui.control.UIAxes
        UIAxes3                         matlab.ui.control.UIAxes
        UIAxes2                         matlab.ui.control.UIAxes
        UIAxes                          matlab.ui.control.UIAxes
        UnitConversionTab               matlab.ui.container.Tab
        Image7                          matlab.ui.control.Image
        Image6                          matlab.ui.control.Image
        Image5                          matlab.ui.control.Image
        Image4                          matlab.ui.control.Image
        Image3                          matlab.ui.control.Image
        ChooseaUnitLabel                matlab.ui.control.Label
        DropDown                        matlab.ui.control.DropDown
        Pressure_Conc                   matlab.ui.control.NumericEditField
        PascalLabel_5                   matlab.ui.control.Label
        ConvertButton_3                 matlab.ui.control.Button
        PressurePanel                   matlab.ui.container.Panel
        PascalEditField                 matlab.ui.control.NumericEditField
        PascalEditFieldLabel            matlab.ui.control.Label
        psiEditField                    matlab.ui.control.NumericEditField
        lbft2Label                      matlab.ui.control.Label
        BarEditField                    matlab.ui.control.NumericEditField
        BarEditFieldLabel               matlab.ui.control.Label
        AtmosphereEditField             matlab.ui.control.NumericEditField
        AtmosphereEditFieldLabel        matlab.ui.control.Label
        ButtonGroup_6                   matlab.ui.container.ButtonGroup
        lb_ft2Button                    matlab.ui.control.RadioButton
        BarButton                       matlab.ui.control.RadioButton
        AtmButton                       matlab.ui.control.RadioButton
        PascalButton                    matlab.ui.control.RadioButton
        Joule_Conc                      matlab.ui.control.NumericEditField
        PascalLabel_4                   matlab.ui.control.Label
        ConvertButton_5                 matlab.ui.control.Button
        EnergyPanel                     matlab.ui.container.Panel
        JouleEditField                  matlab.ui.control.NumericEditField
        JouleEditFieldLabel             matlab.ui.control.Label
        BTUEditField                    matlab.ui.control.NumericEditField
        BTUEditFieldLabel               matlab.ui.control.Label
        ButtonGroup_5                   matlab.ui.container.ButtonGroup
        BTUButton                       matlab.ui.control.RadioButton
        JouleButton                     matlab.ui.control.RadioButton
        kg_Conc                         matlab.ui.control.NumericEditField
        PascalLabel_3                   matlab.ui.control.Label
        ConvertButton_4                 matlab.ui.control.Button
        MassPanel                       matlab.ui.container.Panel
        KilogramEditField               matlab.ui.control.NumericEditField
        KilogramEditFieldLabel          matlab.ui.control.Label
        PoundmassEditField              matlab.ui.control.NumericEditField
        PoundmassEditFieldLabel         matlab.ui.control.Label
        SlugEditField                   matlab.ui.control.NumericEditField
        SlugEditFieldLabel              matlab.ui.control.Label
        ButtonGroup_4                   matlab.ui.container.ButtonGroup
        Pund_MassButton                 matlab.ui.control.RadioButton
        SlugButton                      matlab.ui.control.RadioButton
        KgButton                        matlab.ui.control.RadioButton
        cp_Conc                         matlab.ui.control.NumericEditField
        PascalLabel_2                   matlab.ui.control.Label
        ConvertButton_6                 matlab.ui.control.Button
        SpesificHeatPanel               matlab.ui.container.Panel
        c_pLabel                        matlab.ui.control.Label
        J_kgKEditField                  matlab.ui.control.NumericEditField
        JkgKEditFieldLabel              matlab.ui.control.Label
        BTU_lbREditField_2              matlab.ui.control.NumericEditField
        BTUlbREditField_2Label          matlab.ui.control.Label
        ButtonGroup_3                   matlab.ui.container.ButtonGroup
        BTU_lbRButton                   matlab.ui.control.RadioButton
        J_kgKButton                     matlab.ui.control.RadioButton
        Meter_Conc                      matlab.ui.control.NumericEditField
        PascalLabel                     matlab.ui.control.Label
        ConvertButton_2                 matlab.ui.control.Button
        LengthPanel                     matlab.ui.container.Panel
        MeterEditField                  matlab.ui.control.NumericEditField
        MeterEditFieldLabel             matlab.ui.control.Label
        MileEditField                   matlab.ui.control.NumericEditField
        MileEditFieldLabel              matlab.ui.control.Label
        InchEditField                   matlab.ui.control.NumericEditField
        InchEditFieldLabel              matlab.ui.control.Label
        FootEditField                   matlab.ui.control.NumericEditField
        FootEditFieldLabel              matlab.ui.control.Label
        ButtonGroup_2                   matlab.ui.container.ButtonGroup
        MileButton                      matlab.ui.control.RadioButton
        InchButton                      matlab.ui.control.RadioButton
        FootButton                      matlab.ui.control.RadioButton
        MeterButton                     matlab.ui.control.RadioButton
        Temp_ConcEditField              matlab.ui.control.NumericEditField
        KLabel                          matlab.ui.control.Label
        ConvertButton                   matlab.ui.control.Button
        TemperaturePanel                matlab.ui.container.Panel
        KelvinEditField                 matlab.ui.control.NumericEditField
        KelvinEditFieldLabel            matlab.ui.control.Label
        FahrenheitEditField             matlab.ui.control.NumericEditField
        FahrenheitEditFieldLabel        matlab.ui.control.Label
        RankineEditField                matlab.ui.control.NumericEditField
        RankineEditFieldLabel           matlab.ui.control.Label
        CelsiusEditField                matlab.ui.control.NumericEditField
        CelsiusEditFieldLabel           matlab.ui.control.Label
        ButtonGroup                     matlab.ui.container.ButtonGroup
        Button_4                        matlab.ui.control.RadioButton
        Button_3                        matlab.ui.control.RadioButton
        Button_2                        matlab.ui.control.RadioButton
        Button                          matlab.ui.control.RadioButton
    end


    methods (Access = private)

    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Value changed function: AfterburnerSwitch
        function AfterburnerSwitchValueChanged(app, event)
            selectedButton = app.ENGINETYPESELECTIONButtonGroup.SelectedObject;
            value = app.AfterburnerSwitch.Value;
            if (strcmpi(value,"On"))
                app.AfterburnerPanel.Visible="on";
                app.Image_AfterBurner.Enable="on";               
                if selectedButton==app.TURBOFANButton
                    app.DuctburnerTurbofanPanel.Visible="on";
                end
            else
                app.AfterburnerPanel.Visible="off";
                app.Image_AfterBurner.Enable="off";
                app.DuctburnerTurbofanPanel.Visible="off";
                app.DuctburnerTurbofanPanel.Visible="off";
            end
        end

        % Selection changed function: ENGINETYPESELECTIONButtonGroup
        function ENGINETYPESELECTIONButtonGroupSelectionChanged(app, event)
            selectedButton = app.ENGINETYPESELECTIONButtonGroup.SelectedObject;
            value = app.AfterburnerSwitch.Value;

            if selectedButton==app.TURBOJETButton     
                app.Image_Jet.Enable="on";
                app.Image_Fan.Enable="off";
                app.Image_Mixed.Enable="off";
                
                app.MixedPanel.Visible="off";
                app.FanPanel.Visible="off";
                app.SeperatedTrubofanPanel.Visible="off";
                app.DuctburnerTurbofanPanel.Visible="off";

            elseif selectedButton==app.TURBOFANButton                
                app.Image_Jet.Enable="off";
                app.Image_Fan.Enable="on";
                app.Image_Mixed.Enable="off";

                app.MixedPanel.Visible="off";
                app.FanPanel.Visible="on";
                app.SeperatedTrubofanPanel.Visible="on";
                if (strcmpi(value,"On"))
                    app.DuctburnerTurbofanPanel.Visible="on";
                elseif (strcmpi(value,"Off"))
                    app.DuctburnerTurbofanPanel.Visible="off";
                end
            else
                app.Image_Jet.Enable="off";
                app.Image_Fan.Enable="off";
                app.Image_Mixed.Enable="on";

                app.FanPanel.Visible="on";
                app.MixedPanel.Visible="on";
                app.SeperatedTrubofanPanel.Visible="off";
                app.DuctburnerTurbofanPanel.Visible="off";
            end
        end

        % Selection changed function: ButtonGroup
        function TemperatureButtonSwitches(app, event)
            selectedButton = app.ButtonGroup.SelectedObject;
            if selectedButton==app.Button
                app.KelvinEditField.Enable="on";
                app.CelsiusEditField.Enable="off";
                app.RankineEditField.Enable="off";
                app.FahrenheitEditField.Enable="off";
            elseif selectedButton==app.Button_2
                app.KelvinEditField.Enable="off";
                app.CelsiusEditField.Enable="on";
                app.RankineEditField.Enable="off";
                app.FahrenheitEditField.Enable="off";
            elseif selectedButton==app.Button_3
                app.KelvinEditField.Enable="off";
                app.CelsiusEditField.Enable="off";
                app.RankineEditField.Enable="on";
                app.FahrenheitEditField.Enable="off";
            else
                app.KelvinEditField.Enable="off";
                app.CelsiusEditField.Enable="off";
                app.RankineEditField.Enable="off";
                app.FahrenheitEditField.Enable="on";
            end

        end

        % Button pushed function: ConvertButton
        function TemperatureCalculator(app, event)
            selectedButton= app.ButtonGroup.SelectedObject;
            selectedMenu=app.DropDown.Value;
            
            if strcmpi(selectedMenu,"SI Units")
                if selectedButton==app.Button % Kelvin
                    app.Temp_ConcEditField.Value=app.KelvinEditField.Value;
                elseif selectedButton==app.Button_2 % Celsius
                    app.Temp_ConcEditField.Value=app.CelsiusEditField.Value+273.15;
                elseif selectedButton==app.Button_3 % Rankine
                    app.Temp_ConcEditField.Value=app.RankineEditField.Value*5/9;
                else % Fahrenheit
                    app.Temp_ConcEditField.Value=(app.FahrenheitEditField.Value+459.67)*5/9;
                end
            end

            if strcmpi(selectedMenu,"Imperial Units")
                if selectedButton==app.Button % Kelvin
                    app.Temp_ConcEditField.Value=app.KelvinEditField.Value*1.8;
                elseif selectedButton==app.Button_2 % Celsius
                    app.Temp_ConcEditField.Value=(app.CelsiusEditField.Value+273.15)*1.8;
                elseif selectedButton==app.Button_3 % Rankine
                    app.Temp_ConcEditField.Value=app.RankineEditField.Value;
                else % Fahrenheit
                    app.Temp_ConcEditField.Value=(app.FahrenheitEditField.Value+459.67);
                end
            end
        end

        % Selection changed function: ButtonGroup_2
        function LengthButtonSwitches(app, event)
            selectedButton = app.ButtonGroup_2.SelectedObject;
            if selectedButton==app.MeterButton % Meter
                app.MeterEditField.Enable="on";
                app.FootEditField.Enable="off";
                app.InchEditField.Enable="off";
                app.MileEditField.Enable="off";
            elseif selectedButton==app.FootButton % Foot
                app.MeterEditField.Enable="off";
                app.FootEditField.Enable="on";
                app.InchEditField.Enable="off";
                app.MileEditField.Enable="off";
            elseif selectedButton==app.InchButton % Inch
                app.MeterEditField.Enable="off";
                app.FootEditField.Enable="off";
                app.InchEditField.Enable="on";
                app.MileEditField.Enable="off";
            else % Mile
                app.MeterEditField.Enable="off";
                app.FootEditField.Enable="off";
                app.InchEditField.Enable="off";
                app.MileEditField.Enable="on";
            end
        end

        % Button pushed function: ConvertButton_2
        function LengthCalculateButton(app, event)
            selectedButton = app.ButtonGroup_2.SelectedObject;
            selectedMenu=app.DropDown.Value;

            if strcmpi(selectedMenu,"SI Units") % metre cinsinden
                if selectedButton==app.MeterButton
                    app.Meter_Conc.Value=app.MeterEditField.Value;
                elseif selectedButton==app.FootButton
                    app.Meter_Conc.Value=app.FootEditField.Value*0.3048;
                elseif selectedButton==app.InchButton
                    app.Meter_Conc.Value=app.InchEditField.Value*0.0254;
                else
                    app.Meter_Conc.Value=app.MileEditField.Value*1609;
                end
            end

            if strcmpi(selectedMenu,"Imperial Units") % foot cinsinden
                if selectedButton==app.MeterButton
                    app.Meter_Conc.Value=app.MeterEditField.Value*3.281;
                elseif selectedButton==app.FootButton
                    app.Meter_Conc.Value=app.FootEditField.Value;
                elseif selectedButton==app.InchButton
                    app.Meter_Conc.Value=app.InchEditField.Value*0.08333;
                else
                    app.Meter_Conc.Value=app.MileEditField.Value*5280;
                end
            end
        end

        % Selection changed function: ButtonGroup_6
        function PressureButtonSwitches(app, event)
            selectedButton = app.ButtonGroup_6.SelectedObject;
            if selectedButton==app.PascalButton
                app.PascalEditField.Enable="on";
                app.AtmosphereEditField.Enable="off";
                app.BarEditField.Enable="off";
                app.psiEditField.Enable="off";
            elseif selectedButton==app.AtmButton
                app.PascalEditField.Enable="off";
                app.AtmosphereEditField.Enable="on";
                app.BarEditField.Enable="off";
                app.psiEditField.Enable="off";
            elseif selectedButton==app.BarButton
                app.PascalEditField.Enable="off";
                app.AtmosphereEditField.Enable="off";
                app.BarEditField.Enable="on";
                app.psiEditField.Enable="off";
            else
                app.PascalEditField.Enable="off";
                app.AtmosphereEditField.Enable="off";
                app.BarEditField.Enable="off";
                app.psiEditField.Enable="on";
            end
        end

        % Button pushed function: ConvertButton_3
        function PressureCalculateButton(app, event)
            selectedButton = app.ButtonGroup_6.SelectedObject;
            selectedMenu=app.DropDown.Value;

            if strcmpi(selectedMenu,"SI Units")
                if selectedButton==app.PascalButton
                    app.Pressure_Conc.Value=app.PascalEditField.Value;
                elseif selectedButton==app.AtmButton
                    app.Pressure_Conc.Value=app.AtmosphereEditField.Value*101325;
                elseif selectedButton==app.BarButton
                    app.Pressure_Conc.Value=app.BarEditField.Value*100000;
                else
                    app.Pressure_Conc.Value=app.psiEditField.Value*6894.7572;
                end
            end

            if strcmpi(selectedMenu,"Imperial Units") % psi
                if selectedButton==app.PascalButton
                    app.Pressure_Conc.Value=app.PascalEditField.Value*0.00014503;
                elseif selectedButton==app.AtmButton
                    app.Pressure_Conc.Value=app.AtmosphereEditField.Value*14.6959;
                elseif selectedButton==app.BarButton
                    app.Pressure_Conc.Value=app.BarEditField.Value*14.503774;
                else
                    app.Pressure_Conc.Value=app.psiEditField.Value;
                end
            end
        end

        % Selection changed function: ButtonGroup_4
        function MassButtonSwitches(app, event)
            selectedButton = app.ButtonGroup_4.SelectedObject;
            if selectedButton==app.KgButton
                app.KilogramEditField.Enable="on";
                app.SlugEditField.Enable="off";
                app.PoundmassEditField.Enable="off";
            elseif selectedButton==app.SlugButton
                app.KilogramEditField.Enable="off";
                app.SlugEditField.Enable="on";
                app.PoundmassEditField.Enable="off";
            else
                app.KilogramEditField.Enable="off";
                app.SlugEditField.Enable="off";
                app.PoundmassEditField.Enable="on";
            end
        end

        % Button pushed function: ConvertButton_4
        function MassCalculateButton(app, event)
            selectedButton = app.ButtonGroup_4.SelectedObject;
            selectedMenu=app.DropDown.Value;

            if strcmpi(selectedMenu,"SI Units")
                if selectedButton==app.KgButton
                    app.kg_Conc.Value=app.KilogramEditField.Value;
                elseif selectedButton==app.SlugButton
                    app.kg_Conc.Value=app.SlugEditField.Value*14.594;
                else
                    app.kg_Conc.Value=app.PoundmassEditField.Value*0.4536;
                end
            end

            if strcmpi(selectedMenu,"Imperial Units")

            end
        end

        % Selection changed function: ButtonGroup_5
        function EnergyButtonSwitches(app, event)
            selectedButton = app.ButtonGroup_5.SelectedObject;
            if selectedButton==app.JouleButton
                app.JouleEditField.Enable="on";
                app.BTUEditField.Enable="off";
            else
                app.JouleEditField.Enable="off";
                app.BTUEditField.Enable="on";
            end
        end

        % Button pushed function: ConvertButton_5
        function EnergyCalculalteButton(app, event)
            selectedButton = app.ButtonGroup_5.SelectedObject;
            selectedMenu=app.DropDown.Value;

            if strcmpi(selectedMenu,"SI Units")
                if selectedButton==app.JouleButton
                    app.Joule_Conc.Value=app.JouleEditField.Value;
                else
                    app.Joule_Conc.Value=app.BTUEditField.Value*1055.056;
                end
            end
            
            if strcmpi(selectedMenu,"Imperial Units")

            end
        end

        % Selection changed function: ButtonGroup_3
        function SpesificHeatButtonSwitches(app, event)
            selectedButton = app.ButtonGroup_3.SelectedObject;

            if selectedButton==app.J_kgKButton
                app.J_kgKEditField.Enable="on";
                app.BTU_lbREditField_2.Enable="off";
            else
                app.J_kgKEditField.Enable="off";
                app.BTU_lbREditField_2.Enable="on";
            end
        end

        % Button pushed function: ConvertButton_6
        function SpesificHeatCalculateButton(app, event)
            selectedButton = app.ButtonGroup_3.SelectedObject;
            selectedMenu=app.DropDown.Value;

            if strcmpi(selectedMenu,"SI Units")
                if selectedButton==app.J_kgKButton
                    app.cp_Conc.Value=app.J_kgKEditField.Value;
                else
                    app.cp_Conc.Value=app.BTU_lbREditField_2.Value*4186.8;
                end
            end

            if strcmpi(selectedMenu,"Imperial Units")

            end
        end

        % Value changed function: DropDown
        function DropDownValueChanged(app, event)
            value = app.DropDown.Value;
            if strcmpi(value,"SI Units")
                %% Conversion Table
                app.KLabel.Text="$(^\circ K)$"; % Sıcaklık
                app.PascalLabel.Text="$(m)$"; % Metre
                app.PascalLabel_5.Text="$(pa)$"; % Pascal
                app.PascalLabel_3.Text="$(kg)$"; % KG
                app.PascalLabel_4.Text="$(J)$"; % Joule
                app.PascalLabel_2.Text="$(J/kg.^\circ K)$"; % c
            elseif strcmpi(value,"Imperial Units")
                %% Conversion Table
                app.KLabel.Text="$(^\circ R)$"; % Sıcaklık
                app.PascalLabel.Text="$(ft)$"; % Metre
                app.PascalLabel_5.Text="$(psi)$"; % Pascal
                app.PascalLabel_3.Text="$(lb)$"; % KG
                app.PascalLabel_4.Text="$(BTU)$"; % Joule
                app.PascalLabel_2.Text="$(BTU/lb.^\circ R)$"; % cp
            end
        end

        % Button pushed function: CalculateButton
        function ParametersCalculateButton(app, event)
            app.TabGroup.SelectedTab=app.ParametricConclusionTab;
            selectedEngine= app.ENGINETYPESELECTIONButtonGroup.SelectedObject;
            
            %-------------------- INPUTS -----------------------------------
            %% Air Inlet - Diffuser - Exhaust
            pi_dmax = app.pi_d_maxEditField.Value;         % Diffuser max pressure ratio
            M0 = app.M_0EditField.Value;              % Mach number at freestream
            T0 = app.T_0KcircEditField.Value;           % Temperature value at freestream
            pi_n = app.pi_nEditField.Value;            % Nozzle pressure ratio
            P0_P9 = app.P_0P_9EditField.Value;              % Inlet and nozzle pressure ratio
            %% Compressor
            cp_c = app.c_pcJkgcircKEditField.Value;         % Compressor pressure coefficient
            gamma_c = app.gamma_cEditField.Value;          % Specific Heat Ratio in Compressor
            e_c = app.e_cEditField.Value;             % Compressor polytropic efficiency
            pi_c = app.pi_cEditField.Value;              % Compressor pressure ratio
            %% Burner
            pi_b = app.pi_bEditField.Value;            % Burner pressure ratio
            eta_b = app.eta_bEditField.Value;          % Burner efficiency
            T_t4 = app.T_t4circKEditField.Value;         % Burner inlet temperature
            h_PR = app.h_PRkJkgEditField.Value;         % h_PR
            %% Turbine
            cp_t = app.c_ptJkgcircKEditField.Value;         % Turbine pressure coefficient
            e_t = app.e_tEditField.Value;             % Turbine polytropic effiency
            gamma_t = app.gamma_tEditField.Value;          % Specific heat ratio in turbine
            M6 = app.M_6EditField.Value;               % Turbine exit mach number
            % Mixed
            eta_m = app.eta_mEditField.Value;           % mixed efficieny
            % --------------------------------------------------------------

            %% Air Section
            R_t=(gamma_t-1)/gamma_t*cp_t;
            R_c=(gamma_c-1)/gamma_c*cp_c;
            a0_speed= sqrt(gamma_c*R_c*T0);
            V0= a0_speed*M0;
           
            %% Ram Section
            tau_r = 1 + (((gamma_c - 1) / 2) * M0^2);      % Ram temperature ratio
            pi_r = tau_r^(gamma_c / (gamma_c - 1));         % Ram pressure ratio, isentropic relation

            % eta_r calculation
            if M0<=1
                eta_r=1;
            else
                eta_r= 1-0.075*(M0-1)^1.35;
            end

            %% Diffuser Section
            pi_d = pi_dmax* eta_r;      % Diffuser pressure ratio
            tau_d=1;                    % Highly adiabatic

            %% Compressor Section
            tau_c= pi_c^((gamma_c -1)/(gamma_c*e_c));           % tau_c calculation
            eta_c= (pi_c^((gamma_c-1)/gamma_c)-1)/(tau_c-1);    % eta_c calculation
            T_t3= T0 * tau_r * tau_d * tau_c;                  % Total temperature at st3. calculation
            tau_lambda= (cp_t*T_t4)/(cp_c*T0);                 % tau_lambda calculation

            %% Burner Section
            % Read the appendix table-D in Excel
            data=readtable("appendix D.xlsx", "VariableNamingRule","preserve");
            T_values= data{:,1};                                % T values in table
            f_values= [0, 0.0169, 0.0338, 0.0507, 0.0676];      % f values in table
            h_values= data{:,3:end};                            % h values in table

            h_t3=interp1(T_values,h_values(:,1),T_t3);      % h_t3 at f=0 and T=T_t3

            % Iteration With Interpolation
            iter=1;
            error=1e-3;
            max_iter=6;
            error_threshold=1e-6;
            f=0.0338;
            while (iter<=max_iter) && (error>error_threshold)
                f_old=f;
                first_interpolation = arrayfun(@(row) interp1(f_values, h_values(row, :), f, 'linear'), 1:length(T_values));
                h_t4 = interp1(T_values, first_interpolation, T_t4, 'linear');
                f=(h_t4-h_t3)/(eta_b*h_PR-h_t4);
                error=abs(f_old-f);
                iter=iter+1;
            end
            tau_b=T_t4/T_t3; % Burner temperature ratio

            %% Özelleştirilmiş kısım --------------------------------------------------------------
            %% TURBOJET ----------------------------
            if selectedEngine==app.TURBOJETButton
                %% Turbine Section
                tau_t= 1- (tau_r/((1+f)*eta_m*tau_lambda))*(tau_c-1);
                pi_t= tau_t^(gamma_t/((gamma_t-1)*e_t));
                eta_t= (1-tau_t)/(1-tau_t^(1/e_t));

                %% Afterburner Selection
                selection_AB=app.AfterburnerSwitch.Value;

                if strcmpi(selection_AB,"on")
                    %% Afterburner Parameters
                    cp_AB = app.c_p_ABJkgcircKEditField.Value;        %afterburner pressure coefficient
                    gamma_AB = app.gamma_ABEditField.Value;         %specific heat ratio in afterburner
                    eta_AB = app.eta_ABEditField.Value;          %afterburner efficiency
                    pi_AB = app.pi_ABEditField.Value;           %afterburner pressure ratio
                    T_t7 = app.T_t7circKEditField.Value;            %afterburner exit temperature 

                    %% Afterburner Section
                    R_AB= (gamma_AB-1)/gamma_AB*cp_AB;
                    tau_lambda_AB= (cp_AB*T_t7)/(cp_c*T0);
                    T_t6a= T0*tau_r*tau_d*tau_c*tau_b*tau_t; %?????
                    h_t6a=interp1(T_values,h_values(:,1),T_t6a);      % h_t6a at f=0 and T=T_t6

                    % Iteration With Interpolation
                    iter_AB=1;
                    error_AB=1;
                    max_iter_AB=6;
                    error_threshold_AB=1e-5;
                    f_AB=0.0338;
                    while (iter_AB<=max_iter_AB) && (error_AB>error_threshold_AB)
                        f_old_AB=f_AB;
                        first_interpolation_AB = arrayfun(@(row) interp1(f_values, h_values(row, :), f_AB, 'linear'), 1:length(T_values));
                        h_t7 = interp1(T_values, first_interpolation_AB, T_t7, 'linear');
                        f_AB=(1+f)*(h_t7-h_t6a)/(eta_AB*h_PR-h_t7);
                        error_AB=abs(f_old_AB-f_AB);
                        iter_AB=iter_AB+1;
                    end
                    Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_AB*pi_n;
                    T9_T0= (T_t7/T0)/(Pt9_P9^((gamma_AB-1)/gamma_AB));
                    M9= sqrt(2/(gamma_AB-1)*(Pt9_P9^((gamma_AB-1)/gamma_AB)-1));
                    V9_a0=M9*sqrt(gamma_AB*R_AB*T9_T0/(gamma_c*R_c));
                    F_m0=a0_speed*((1+f+f_AB)*V9_a0-M0+(1+f+f_AB)*R_AB*T9_T0*(1-P0_P9)/(R_c*V9_a0*gamma_c));
                    S=(f+f_AB)/F_m0;
                    eta_thermal= (a0_speed^2*(((1+f+f_AB)*(V9_a0)^2)-M0^2))/(2*f*h_PR*1e3);
                    eta_propulsive= (2*V0*F_m0)/(a0_speed^2*(((1+f+f_AB)*(V9_a0)^2)-M0^2));
                    eta_overall=eta_propulsive*eta_thermal;

                elseif strcmpi(selection_AB,"off")
                    Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_n;
                    M9=sqrt((2/(gamma_t-1))*(Pt9_P9^((gamma_t-1)/gamma_t)-1));
                    T9_T0= (tau_lambda*tau_t*cp_c)/(cp_t*Pt9_P9^((gamma_t-1)/gamma_t));
                    V9_a0= M9*sqrt(gamma_t*R_t*T9_T0/(gamma_c*R_c));
                    F_m0= a0_speed*((1+f)*V9_a0-M0+(1+f)*((R_t*T9_T0)/(R_c*V9_a0))*((1-P0_P9)/gamma_c));
                    S=f/F_m0;
                    eta_thermal= (a0_speed^2*(((1+f)*(V9_a0)^2)-M0^2))/(2*f*h_PR*1e3);
                    eta_propulsive= (2*V0*F_m0)/(a0_speed^2*(((1+f)*(V9_a0)^2)-M0^2));
                    eta_overall=eta_propulsive*eta_thermal;
                end

            %% TURBOFAN SEPERATED
            elseif selectedEngine==app.TURBOFANButton %Seperated
                %% Parameters
                e_f = app.e_fEditField.Value;             %fan polytropic efficiency
                pi_f = app.pi_fEditField.Value;               %fan pressure ratio
                P0_P19= app.fracP_0P_19EditField.Value;
                pi_fn= app.pi_fnEditField.Value;
                alpha_value= app.alphaEditField.Value;
                %% Fan Section
                tau_f= pi_f^((gamma_c-1)/(gamma_c*e_f));            %isentropic relation
                eta_f= (pi_f^((gamma_c-1)/gamma_c)-1)/(tau_f-1);    %fan efficiency

                %% Turbine Section
                tau_t= 1- (tau_r/((1+f)*eta_m*tau_lambda))*(tau_c-1+alpha_value*(tau_f-1));     %
                pi_t= tau_t^(gamma_t/((gamma_t-1)*e_t));                                        %
                eta_t= (1-tau_t)/(1-tau_t^(1/e_t));
                R_t=(gamma_t-1)/gamma_t*cp_t;

                %% Afterburner Selection
                selection_AB=app.AfterburnerSwitch.Value;
                
                if strcmpi(selection_AB,"on") % ----- Afterburner ON ------
                    %% Afterburner Parameters
                    cp_AB = app.c_p_ABJkgcircKEditField.Value;        %afterburner pressure coefficient
                    gamma_AB = app.gamma_ABEditField.Value;         %specific heat ratio in afterburner
                    eta_AB = app.eta_ABEditField.Value;          %afterburner efficiency
                    pi_AB = app.pi_ABEditField.Value;           %afterburner pressure ratio
                    T_t7 = app.T_t7circKEditField.Value;            %afterburner exit temperature

                    gamma_DB= app.gamma_DBEditField.Value;
                    cp_DB= app.c_p_DBJkgcircKEditField.Value;
                    pi_DB= app.pi_DBEditField.Value;
                    eta_DB= app.eta_DBEditField.Value;
                    T_t17= app.T_t17KEditField.Value;

                    %% Afterburner Section
                    R_AB=(gamma_AB-1)/gamma_AB*cp_AB;
                    R_DB=(gamma_DB-1)/gamma_DB*cp_DB;
                    tau_lambda_AB= (cp_AB*T_t7)/(cp_c*T0);
                    tau_lambda_DB= (cp_DB*T_t17)/(cp_c*T0);
                    f_AB= (1+f)*((tau_lambda_AB-tau_lambda*tau_t)/(eta_AB*h_PR/(cp_c*T0)-tau_lambda_AB));
                    f_DB= ((tau_lambda_DB-tau_r*tau_f)/(eta_DB*h_PR/(cp_c*T0)-tau_lambda_AB));
                    %-----------------------------------------------
                    Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_AB*pi_n;
                    M9=sqrt((2/(tau_lambda_AB-1))*(Pt9_P9^((gamma_AB-1)/gamma_AB)-1));
                    T9_T0= (T_t7/T0)/(Pt9_P9^((gamma_AB-1)/gamma_AB));
                    V9_a0= M9*sqrt(gamma_AB*R_AB*T9_T0/(gamma_c*R_c));
                    Pt19_P19= P0_P19*pi_r*pi_d*pi_f*pi_DB*pi_fn;
                    M19= sqrt((2/(gamma_DB-1))*(Pt19_P19^((gamma_DB-1)/gamma_DB)-1));
                    T19_T0= (T_t17/T0)/(Pt19_P19^((gamma_DB-1)/gamma_DB));
                    V19_a0=M19*sqrt(gamma_DB*R_DB*T19_T0/(gamma_c*R_c));
                    first= R_AB*T9_T0*(1-P0_P9)/(R_c*V9_a0*gamma_c);
                    second= ((1+f_DB)*V19_a0-M0+(1+f_DB)*((R_DB*T19_T0*(1-P0_P19))/(R_c*V19_a0*gamma_c)));
                    F_m0= a0_speed/(1+alpha_value)*((1+f+f_AB)*V9_a0-M0+(1+f+f_AB)*first)+(alpha_value*a0_speed/(1+alpha_value))*second;
                    S= (f+f_AB+alpha_value*f_DB)/((1+alpha_value)*F_m0);
                    eta_thermal= (a0_speed^2*((1+f)*V9_a0^2+alpha_value*V19_a0^2-(1+alpha_value)*M0^2)) / (2*f*h_PR*1e3);
                    eta_propulsive=(2*M0*((1+f)*V9_a0+alpha_value*V19_a0-(1+alpha_value)*M0)) / ((1+f)*V9_a0^2+alpha_value*V19_a0^2-(1+alpha_value)*M0^2);
                    eta_overall= eta_propulsive*eta_thermal;

                elseif strcmpi(selection_AB,"off") % ----- Afterburner OFF -----
                    Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_n;
                    M9=sqrt((2/(gamma_t-1))*(Pt9_P9^((gamma_t-1)/gamma_t)-1));
                    T9_T0= (tau_lambda*tau_t*cp_c)/(cp_t*Pt9_P9^((gamma_t-1)/gamma_t));
                    V9_a0= M9*sqrt(gamma_t*R_t*T9_T0/(gamma_c*R_c));
                    Pt19_P19=P0_P19*pi_r*pi_d*pi_f*pi_fn;
                    M19= sqrt((2/(gamma_c-1))*(Pt19_P19^((gamma_c-1)/gamma_c)-1));
                    T19_T0= (tau_r*tau_f)/Pt19_P19^((gamma_c-1)/gamma_c);
                    V19_a0=M19*sqrt(T19_T0);
                    first= ((R_t*T9_T0)/(R_c*V9_a0))*((1-P0_P9)/gamma_c);
                    second= V19_a0-M0+T19_T0/V19_a0*((1-P0_P19)/gamma_c);
                    F_m0=a0_speed/(1+alpha_value)*((1+f)*V9_a0-M0+(1+f)*first)+(alpha_value*a0_speed/(1+alpha_value)*second);
                    S= f/((1+alpha_value)*F_m0);
                    eta_thermal= (a0_speed^2*((1+f)*V9_a0^2+alpha_value*V19_a0^2-(1+alpha_value)*M0^2)) / (2*f*h_PR*1e3);
                    eta_propulsive=(2*M0*((1+f)*V9_a0+alpha_value*V19_a0-(1+alpha_value)*M0)) / ((1+f)*V9_a0^2+alpha_value*V19_a0^2-(1+alpha_value)*M0^2);
                    eta_overall= eta_propulsive*eta_thermal;
                end

            %% MIXED
            elseif selectedEngine==app.MIXEDButton
                %% Mixed
                pi_Mmax = app.pi_M_maxEditField.Value;         %ideal constant area mixer
                %% Fan
                e_f = app.e_fEditField.Value;             %fan polytropic efficiency
                pi_f = app.pi_fEditField.Value;               %fan pressure ratio

                %% Fan Section
                tau_f= pi_f^((gamma_c-1)/(gamma_c*e_f));            %isentropic relation
                eta_f= (pi_f^((gamma_c-1)/gamma_c)-1)/(tau_f-1);    %fan efficiency

                %% Fan Alpha Value
                alpha_value= (eta_m*(1+f)*(tau_lambda/tau_r)*(1-(pi_f/(pi_c*pi_b))^((gamma_t-1)*e_t/gamma_t))-(tau_c-1))/(tau_f-1);   %bypass ratio

                %% Turbine
                tau_t= 1- (tau_r/((1+f)*eta_m*tau_lambda))*(tau_c-1+alpha_value*(tau_f-1));     %
                pi_t= tau_t^(gamma_t/((gamma_t-1)*e_t));                                        %
                eta_t= (1-tau_t)/(1-tau_t^(1/e_t));
                R_t=(gamma_t-1)/gamma_t*cp_t;
                
                %% Other Calculation
                Pt16_Pt6= pi_f/(pi_c*pi_b*pi_t);
                M16= sqrt(2/(gamma_c-1)*((Pt16_Pt6*(1+(gamma_t-1)/2*M6^2)^(gamma_t/(gamma_t-1)))^((gamma_c-1)/gamma_c)-1));
                alpha_value_prime= alpha_value/(1+f);
                cp_6A=(cp_t+alpha_value_prime*cp_c)/(1+alpha_value_prime);
                R_6A=(R_t+alpha_value_prime*R_c)/(1+alpha_value_prime);
                gamma_6A=cp_6A/(cp_6A-R_6A);
                Tt16_Tt6=T0*tau_r*tau_f/(T_t4*tau_t);
                tau_M=(cp_t/cp_6A)*(1+alpha_value_prime*(cp_c/cp_t)*Tt16_Tt6)/(1+alpha_value_prime);
                fi_6= (M6^2*(1+((gamma_t-1)/2)*M6^2))/(1+gamma_t*M6^2)^2;
                fi_16= (M16^2*(1+((gamma_c-1)/2)*M16^2))/(1+gamma_c*M16^2)^2;
                fi_sub1= (1/sqrt(fi_6))+alpha_value_prime*sqrt(R_c*gamma_t*Tt16_Tt6/(R_t*gamma_c*fi_16));
                fi=((1+alpha_value_prime)/fi_sub1)^2*R_6A*gamma_t*tau_M/(R_t*gamma_6A);
                M6A=sqrt(2*fi/(1-2*gamma_6A*fi+sqrt(1-2*(gamma_6A+1)*fi)));
                A16_A6= (alpha_value_prime*sqrt(Tt16_Tt6)) / (M16/M6*sqrt((gamma_c*R_t*(1+((gamma_c-1)/2)*M16^2)) / (gamma_t*R_c*(1+((gamma_t-1)/2)*M6^2))));
                MFP_6=(M6*sqrt(gamma_t/R_t)) / ((1+((gamma_t-1)/2)*M6^2)^((gamma_t+1)/(2*(gamma_t-1))));
                MFP_6A=(M6A*sqrt(gamma_6A/R_6A)) / ((1+((gamma_6A-1)/2)*M6A^2)^((gamma_6A+1)/(2*(gamma_6A-1))));
                pi_Mideal= ((1+alpha_value_prime)*sqrt(tau_M)/(1+A16_A6))*(MFP_6/MFP_6A);
                pi_M=pi_Mmax*pi_Mideal;
                
                
                %% Afterburner
                selection_AB=app.AfterburnerSwitch.Value;
                
                if strcmpi(selection_AB,"on") % ----- Afterburner ON -----
                    %% Afterburner Parameters
                    cp_AB = app.c_p_ABJkgcircKEditField.Value;        %afterburner pressure coefficient
                    gamma_AB = app.gamma_ABEditField.Value;         %specific heat ratio in afterburner
                    eta_AB = app.eta_ABEditField.Value;          %afterburner efficiency
                    pi_AB = app.pi_ABEditField.Value;           %afterburner pressure ratio
                    T_t7 = app.T_t7circKEditField.Value;            %afterburner exit temperature
                    
                    %% Afterburner Section
                    R_AB= (gamma_AB-1)/gamma_AB*cp_AB;
                    R_9=R_AB;                 
                    gamma_9=gamma_AB;

                    tau_lambda_AB= (cp_AB*T_t7)/(cp_c*T0);
                    T_t6a= T_t4*tau_t*tau_M;
                    h_t6a=interp1(T_values,h_values(:,1),T_t6a);      % h_t6a at f=0 and T=T_t6

                    % Iteration With Interpolation
                    iter_AB=1;
                    error_AB=1;
                    max_iter_AB=3;
                    error_threshold_AB=1e-5;
                    f_AB=0.0338;
                    while (iter_AB<=max_iter_AB) && (error_AB>error_threshold_AB)
                        f_old_AB=f_AB;
                        first_interpolation_AB = arrayfun(@(row) interp1(f_values, h_values(row, :), f_AB, 'linear'), 1:length(T_values));
                        h_t7 = interp1(T_values, first_interpolation_AB, T_t7, 'linear');
                        f_AB=(1+f/(1+alpha_value))*(h_t7-h_t6a)/(eta_AB*h_PR-h_t7);
                        error_AB=abs(f_old_AB-f_AB);
                        iter_AB=iter_AB+1;
                    end
                    Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_M*pi_AB*pi_n;
                    T9_T0= (T_t7/T0)/(Pt9_P9^((gamma_9-1)/gamma_9));

                elseif strcmpi(selection_AB,"off") % ----- Afterburner OFF -----
                    R_9=R_6A;
                    gamma_9=gamma_6A;
                    f_AB=0;
                    Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_M*pi_n;
                    T9_T0= (T_t4*tau_t*tau_M/T0)/(Pt9_P9^((gamma_9-1)/gamma_9));

                end
                M9=sqrt(2/(gamma_9-1)*(Pt9_P9^((gamma_9-1)/gamma_9)-1));
                V9_a0=M9*sqrt(gamma_9*R_9*T9_T0/(gamma_c*R_c));
                fo=f/(1+alpha_value)+f_AB;
                F_m0=a0_speed*((1+fo)*V9_a0-M0+(1+fo)*R_9*T9_T0*(1-P0_P9)/(R_c*V9_a0*gamma_c));
                S=fo/F_m0;
                eta_propulsive= 2*V0*F_m0/(a0_speed^2*((1+fo)*V9_a0^2-M0^2));
                eta_thermal= (a0_speed^2*((1+fo)*V9_a0^2-M0^2))/(2*fo*h_PR*1e3);
                eta_overall=eta_propulsive*eta_thermal;
            end
            %% Conclusion Part
            app.tau_rLabel.Text=("$\tau_r=$"+tau_r);
            app.tau_dLabel.Text=("$\tau_d=$"+tau_d);
            app.tau_cLabel.Text=("$\tau_c=$"+tau_c);
            app.tau_lambdaLabel.Text=("$\tau_\lambda=$"+tau_lambda);
            app.tau_tLabel.Text=("$\tau_t=$"+tau_t);
            app.pi_rLabel.Text=("$\pi_r=$"+pi_r);
            app.pi_dLabel.Text=("$\pi_d=$"+pi_d);
            app.pi_tLabel.Text=("$\pi_t=$"+pi_t);
            app.eta_cLabel.Text=("$\eta_c=$"+eta_c);
            app.eta_tLabel.Text=("$\eta_t=$"+eta_t);
            app.eta_ThLabel_3.Text=("$\eta_{Th.}=$"+eta_thermal);
            app.eta_PrLabel_3.Text=("$\eta_{Pr.}=$"+eta_propulsive);
            app.eta_OvLabel_3.Text=("$\eta_{Ov.}=$"+eta_overall);
            app.fLabel.Text=("$f=$"+f);
            app.fracP_t9P_9Label.Text=("$\frac{P_{t9}}{P_9}=$"+Pt9_P9);
            app.fracT_9T_0Label.Text=("$\frac{T_{9}}{T_0}=$"+T9_T0);
            app.M_9Label.Text=("$M_9=$"+M9);
            app.fracFdotm_0Label_3.Text=("$\frac{F}{\dot{m}_0}=$"+F_m0+"$(\frac{N\cdot s}{kg})$");
            app.SLabel.Text=("$S= $"+S+"$(\frac{kg}{N\cdot s})$");

            if selectedEngine==app.TURBOJETButton

                app.tau_fLabel.Enable="off";
                app.tau_fLabel.Text=("$\tau_f=$");
                app.tau_lambda_DBLabel.Enable="off";
                app.tau_lambda_DBLabel.Text=("$\tau_{\lambda_{DB}}=$");
                app.tau_MLabel.Enable="off";
                app.tau_MLabel.Text=("$\tau_M=$");

                app.pi_MLabel.Enable="off";
                app.pi_MLabel.Text=("$\pi_M=$");

                app.eta_fLabel.Enable="off";
                app.eta_fLabel.Text=("$\eta_f=$");

                app.f_DBLabel.Enable="off";
                app.f_DBLabel.Text=("$f_{DB}=$");
                app.f_oLabel.Enable="off";
                app.f_oLabel.Text=("$f_o=$");
                app.alphaLabel.Enable="off";
                app.alphaLabel.Text=("\alpha=");

                app.fracP_t16P_t6Label.Enable="off";
                app.fracP_t16P_t6Label.Text=("$\frac{P_{t16}}{P_{t6}}=$");
                app.fracT_t16T_t6Label.Enable="off";
                app.fracT_t16T_t6Label.Text=("$\frac{T_{t16}}{T_{t6}}=$");
                app.M_16Label.Enable="off";
                app.M_16Label.Text=("$M_{16}=$");

                app.fracP_t19P_19Label.Enable="off";
                app.fracP_t19P_19Label.Text=("$\frac{P_{t19}}{P_{19}}=$");
                app.fracT_19T_0Label.Enable="off";
                app.fracT_19T_0Label.Text=("$\frac{T_{19}}{T_0}=$");
                app.M_19Label.Enable="off";
                app.M_19Label.Text=("$M_{19}=$");

                % Afterburner
                if strcmpi(selection_AB,"on")
                    app.f_ABLabel.Enable="on";
                    app.f_ABLabel.Text=("$f_{AB}=$"+f_AB);
                    app.tau_lambda_ABLabel.Enable="on";
                    app.tau_lambda_ABLabel.Text=("$\tau_{\lambda_{AB}}=$"+tau_lambda_AB);

                elseif strcmpi(selection_AB,"off")
                    app.f_ABLabel.Enable="off";
                    app.f_ABLabel.Text=("$f_{AB}=$");
                    app.tau_lambda_ABLabel.Enable="off";
                    app.tau_lambda_ABLabel.Text=("$\tau_{\lambda_{AB}}=$");
                end


            elseif selectedEngine==app.TURBOFANButton %Seperated

                app.tau_fLabel.Enable="on";
                app.tau_fLabel.Text=("$\tau_f=$"+tau_f);
                
                app.tau_MLabel.Enable="off";
                app.tau_MLabel.Text=("$\tau_M=$");

                app.pi_MLabel.Enable="off";
                app.pi_MLabel.Text=("$\pi_M=$");

                app.eta_fLabel.Enable="on";
                app.eta_fLabel.Text=("$\eta_f=$"+eta_f);

                app.f_oLabel.Enable="off";
                app.f_oLabel.Text=("$f_o=$");
                app.alphaLabel.Enable="off";
                app.alphaLabel.Text=("\alpha=");

                app.fracP_t16P_t6Label.Enable="off";
                app.fracP_t16P_t6Label.Text=("$\frac{P_{t16}}{P_{t6}}=$");
                app.fracT_t16T_t6Label.Enable="off";
                app.fracT_t16T_t6Label.Text=("$\frac{T_{t16}}{T_{t6}}=$");
                app.M_16Label.Enable="off";
                app.M_16Label.Text=("$M_{16}=$");

                app.fracP_t19P_19Label.Enable="on";
                app.fracP_t19P_19Label.Text=("$\frac{P_{t19}}{P_{19}}=$"+Pt19_P19);
                app.fracT_19T_0Label.Enable="on";
                app.fracT_19T_0Label.Text=("$\frac{T_{19}}{T_0}=$"+T19_T0);
                app.M_19Label.Enable="on";
                app.M_19Label.Text=("$M_{19}=$"+M19);

                % Afterburner
                if strcmpi(selection_AB,"on")
                    app.f_ABLabel.Enable="on";
                    app.f_ABLabel.Text=("$f_{AB}=$"+f_AB);
                    app.f_DBLabel.Enable="on";
                    app.f_DBLabel.Text=("$f_{DB}=$"+f_DB);
                    app.tau_lambda_ABLabel.Enable="on";
                    app.tau_lambda_ABLabel.Text=("$\tau_{\lambda_{AB}}=$"+tau_lambda_AB);
                    app.tau_lambda_DBLabel.Enable="on";
                    app.tau_lambda_DBLabel.Text=("$\tau_{\lambda_{DB}}=$"+tau_lambda_DB);

                elseif strcmpi(selection_AB,"off")
                    app.f_ABLabel.Enable="off";
                    app.f_ABLabel.Text=("$f_{AB}=$");
                    app.f_DBLabel.Enable="off";
                    app.f_DBLabel.Text=("$f_{DB}=$");
                    app.tau_lambda_ABLabel.Enable="off";
                    app.tau_lambda_ABLabel.Text=("$\tau_{\lambda_{AB}}=$");
                    app.tau_lambda_DBLabel.Enable="off";
                    app.tau_lambda_DBLabel.Text=("$\tau_{\lambda_{DB}}=$");
                end

            elseif selectedEngine==app.MIXEDButton

                app.tau_fLabel.Enable="on";
                app.tau_fLabel.Text=("$\tau_f=$"+tau_f);
                app.tau_lambda_DBLabel.Enable="off";
                app.tau_lambda_DBLabel.Text=("$\tau_{\lambda_{DB}}=$");
                app.tau_MLabel.Enable="on";
                app.tau_MLabel.Text=("$\tau_M=$"+tau_M);

                app.pi_MLabel.Enable="on";
                app.pi_MLabel.Text=("$\pi_M=$"+pi_M);

                app.eta_fLabel.Enable="on";
                app.eta_fLabel.Text=("$\eta_f=$"+eta_f);

                app.f_DBLabel.Enable="off";
                app.f_DBLabel.Text=("$f_{DB}=$");
                app.f_oLabel.Enable="on";
                app.f_oLabel.Text=("$f_o=$"+fo);
                app.alphaLabel.Enable="on";
                app.alphaLabel.Text=("\alpha="+alpha_value);

                app.fracP_t16P_t6Label.Enable="on";
                app.fracP_t16P_t6Label.Text=("$\frac{P_{t16}}{P_{t6}}=$"+Pt16_Pt6);
                app.fracT_t16T_t6Label.Enable="on";
                app.fracT_t16T_t6Label.Text=("$\frac{T_{t16}}{T_{t6}}=$"+Tt16_Tt6);
                app.M_16Label.Enable="on";
                app.M_16Label.Text=("$M_{16}=$"+M16);

                app.fracP_t19P_19Label.Enable="off";
                app.fracP_t19P_19Label.Text=("$\frac{P_{t19}}{P_{19}}=$");
                app.fracT_19T_0Label.Enable="off";
                app.fracT_19T_0Label.Text=("$\frac{T_{19}}{T_0}=$");
                app.M_19Label.Enable="off";
                app.M_19Label.Text=("$M_{19}=$");

                % Afterburner
                if strcmpi(selection_AB,"on")
                    app.f_ABLabel.Enable="on";
                    app.f_ABLabel.Text=("$f_{AB}=$"+f_AB);
                    app.tau_lambda_ABLabel.Enable="on";
                    app.tau_lambda_ABLabel.Text=("$\tau_{\lambda_{AB}}=$"+tau_lambda_AB);

                elseif strcmpi(selection_AB,"off")
                    app.f_ABLabel.Enable="off";
                    app.f_ABLabel.Text=("$f_{AB}=$");
                    app.tau_lambda_ABLabel.Enable="off";
                    app.tau_lambda_ABLabel.Text=("$\tau_{\lambda_{AB}}=$");
                end

            end
        end

        % Button pushed function: DefaultValuesButton
        function DefaultValuesButtonPushed(app, event)
            app.ENGINETYPESELECTIONButtonGroup.SelectedObject=app.MIXEDButton;
            app.AfterburnerSwitch.Value="On";
            app.FanPanel.Visible="on";
            app.MixedPanel.Visible="on";
            app.pi_M_maxEditField.Visible="on";
            app.pi_M_maxEditFieldLabel.Visible="on";
            app.Image_Jet.Enable="off";
            app.Image_Fan.Enable="off";
            app.Image_Mixed.Enable="on";
            app.AfterburnerPanel.Visible="on";
            app.Image_AfterBurner.Enable="on";
            app.SeperatedTrubofanPanel.Visible="off";
            app.DuctburnerTurbofanPanel.Visible="off";
            %-------------------- INPUTS -----------------------------------
            %% Air Inlet - Diffuser - Exhaust
            app.pi_d_maxEditField.Value=0.98;         % Diffuser max pressure ratio
            app.M_0EditField.Value=2;              % Mach number at freestream
            app.T_0KcircEditField.Value=216.67;           % Temperature value at freestream
            app.pi_nEditField.Value=0.98;            % Nozzle pressure ratio
            app.P_0P_9EditField.Value=1;              % Inlet and nozzle pressure ratio
            %% Compressor
            app.c_pcJkgcircKEditField.Value=1004.83;         % Compressor pressure coefficient
            app.gamma_cEditField.Value=1.4;          % Specific Heat Ratio in Compressor
            app.e_cEditField.Value=0.90;             % Compressor polytropic efficiency
            app.pi_cEditField.Value=24;              % Compressor pressure ratio
            %% Burner
            app.pi_bEditField.Value=0.96;            % Burner pressure ratio
            app.eta_bEditField.Value=0.995;          % Burner efficiency
            app.T_t4circKEditField.Value=1777.78;         % Burner inlet temperature
            app.h_PRkJkgEditField.Value=42800;         % h_PR
            %% Turbine
            app.c_ptJkgcircKEditField.Value=1235.11;         % Turbine pressure coefficient
            app.e_tEditField.Value=0.91;             % Turbine polytropic effiency
            app.gamma_tEditField.Value=1.3;          % Specific heat ratio in turbine
            app.M_6EditField.Value=0.5;               % Turbine exit mach number
            %% Mixed
            app.eta_mEditField.Value=0.99;           % mixed efficieny
            app.pi_M_maxEditField.Value=0.98;
            %% Afterburner
            app.c_p_ABJkgcircKEditField.Value=1235.11;        %afterburner pressure coefficient
            app.gamma_ABEditField.Value=1.3;         %specific heat ratio in afterburner
            app.eta_ABEditField.Value=0.95;          %afterburner efficiency
            app.pi_ABEditField.Value=0.96;           %afterburner pressure ratio
            app.T_t7circKEditField.Value=2000;            %afterburner exit temperature
            %% Fan
            app.e_fEditField.Value=0.89;
            app.pi_fEditField.Value=4;
            % --------------------------------------------------------------
        end

        % Button pushed function: PlotButton
        function Plot(app, event)
            f_m0_numbers=[];
            S_numbers=[];
            pi_c_numbers=[];
            hold(app.UIAxes, 'on');
            for M0=app.MachStart.Value:app.MachInterval.Value:app.MachEnd.Value
                for pi_c=app.pi_cStart.Value:app.pi_cInterval.Value:app.pi_cEnd.Value
                    %-------------------- INPUTS -----------------------------------
                    %% Air Inlet - Diffuser - Exhaust
                    pi_dmax = app.pi_d_maxEditField.Value;         % Diffuser max pressure ratio
                    T0 = app.T_0KcircEditField.Value;           % Temperature value at freestream
                    pi_n = app.pi_nEditField.Value;            % Nozzle pressure ratio
                    P0_P9 = app.P_0P_9EditField.Value;              % Inlet and nozzle pressure ratio
                    %% Compressor
                    cp_c = app.c_pcJkgcircKEditField.Value;         % Compressor pressure coefficient
                    gamma_c = app.gamma_cEditField.Value;          % Specific Heat Ratio in Compressor
                    e_c = app.e_cEditField.Value;             % Compressor polytropic efficiency
                    pi_f = app.pi_fEditField.Value;              % fan pressure ratio
                    %% Burner
                    pi_b = app.pi_bEditField.Value;            % Burner pressure ratio
                    eta_b = app.eta_bEditField.Value;          % Burner efficiency
                    T_t4 = app.T_t4circKEditField.Value;         % Burner inlet temperature
                    h_PR = app.h_PRkJkgEditField.Value;         % h_PR
                    %% Turbine
                    cp_t = app.c_ptJkgcircKEditField.Value;         % Turbine pressure coefficient
                    e_t = app.e_tEditField.Value;             % Turbine polytropic effiency
                    gamma_t = app.gamma_tEditField.Value;          % Specific heat ratio in turbine
                    M6 = app.M_6EditField.Value;               % Turbine exit mach number
                    % Mixed
                    eta_m = app.eta_mEditField.Value;           % mixed efficieny
                    % --------------------------------------------------------------

                    %% Air Section
                    R_t=(gamma_t-1)/gamma_t*cp_t;
                    R_c=(gamma_c-1)/gamma_c*cp_c;
                    a0_speed= sqrt(gamma_c*R_c*T0);
                    V0= a0_speed*M0;

                    %% Ram Section
                    tau_r = 1 + (((gamma_c - 1) / 2) * M0^2);      % Ram temperature ratio
                    pi_r = tau_r^(gamma_c / (gamma_c - 1));         % Ram pressure ratio, isentropic relation

                    % eta_r calculation
                    if M0<=1
                        eta_r=1;
                    else
                        eta_r= 1-0.075*(M0-1)^1.35;
                    end

                    %% Diffuser Section
                    pi_d = pi_dmax* eta_r;      % Diffuser pressure ratio
                    tau_d=1;                    % Highly adiabatic

                    %% Compressor Section
                    tau_c= pi_c^((gamma_c -1)/(gamma_c*e_c));           % tau_c calculation
                    eta_c= (pi_c^((gamma_c-1)/gamma_c)-1)/(tau_c-1);    % eta_c calculation
                    T_t3= T0 * tau_r * tau_d * tau_c;                  % Total temperature at st3. calculation
                    tau_lambda= (cp_t*T_t4)/(cp_c*T0);                 % tau_lambda calculation

                    %% Burner Section
                    % Read the appendix table-D in Excel
                    data=readtable("appendix D.xlsx", "VariableNamingRule","preserve");
                    T_values= data{:,1};                                % T values in table
                    f_values= [0, 0.0169, 0.0338, 0.0507, 0.0676];      % f values in table
                    h_values= data{:,3:end};                            % h values in table

                    h_t3=interp1(T_values,h_values(:,1),T_t3);      % h_t3 at f=0 and T=T_t3

                    % Iteration With Interpolation
                    iter=1;
                    error=1e-3;
                    max_iter=6;
                    error_threshold=1e-6;
                    f=0.0338;
                    while (iter<=max_iter) && (error>error_threshold)
                        f_old=f;
                        first_interpolation = arrayfun(@(row) interp1(f_values, h_values(row, :), f, 'linear'), 1:length(T_values));
                        h_t4 = interp1(T_values, first_interpolation, T_t4, 'linear');
                        f=(h_t4-h_t3)/(eta_b*h_PR-h_t4);
                        error=abs(f_old-f);
                        iter=iter+1;
                    end
                    tau_b=T_t4/T_t3; % Burner temperature ratio
                    %% Mixed
                    pi_Mmax = app.pi_M_maxEditField.Value;         %ideal constant area mixer
                    %% Fan
                    e_f = app.e_fEditField.Value;             %fan polytropic efficiency

                    %% Fan Section
                    tau_f= pi_f^((gamma_c-1)/(gamma_c*e_f));            %isentropic relation
                    eta_f= (pi_f^((gamma_c-1)/gamma_c)-1)/(tau_f-1);    %fan efficiency

                    %% Fan Alpha Value
                    alpha_value= (eta_m*(1+f)*(tau_lambda/tau_r)*(1-(pi_f/(pi_c*pi_b))^((gamma_t-1)*e_t/gamma_t))-(tau_c-1))/(tau_f-1);   %bypass ratio
                    if alpha_value<0
                        alpha_value=0;
                    end
                    %% Turbine
                    tau_t= 1- (tau_r/((1+f)*eta_m*tau_lambda))*(tau_c-1+alpha_value*(tau_f-1));     %
                    pi_t= tau_t^(gamma_t/((gamma_t-1)*e_t));                                        %
                    eta_t= (1-tau_t)/(1-tau_t^(1/e_t));
                    R_t=(gamma_t-1)/gamma_t*cp_t;

                    %% Other Calculation
                    Pt16_Pt6= pi_f/(pi_c*pi_b*pi_t);
                    M16= sqrt(2/(gamma_c-1)*((Pt16_Pt6*(1+(gamma_t-1)/2*M6^2)^(gamma_t/(gamma_t-1)))^((gamma_c-1)/gamma_c)-1));
                    alpha_value_prime= alpha_value/(1+f);
                    cp_6A=(cp_t+alpha_value_prime*cp_c)/(1+alpha_value_prime);
                    R_6A=(R_t+alpha_value_prime*R_c)/(1+alpha_value_prime);
                    gamma_6A=cp_6A/(cp_6A-R_6A);
                    Tt16_Tt6=T0*tau_r*tau_f/(T_t4*tau_t);
                    tau_M=(cp_t/cp_6A)*(1+alpha_value_prime*(cp_c/cp_t)*Tt16_Tt6)/(1+alpha_value_prime);
                    fi_6= (M6^2*(1+((gamma_t-1)/2)*M6^2))/(1+gamma_t*M6^2)^2;
                    fi_16= (M16^2*(1+((gamma_c-1)/2)*M16^2))/(1+gamma_c*M16^2)^2;
                    fi_sub1= (1/sqrt(fi_6))+alpha_value_prime*sqrt(R_c*gamma_t*Tt16_Tt6/(R_t*gamma_c*fi_16));
                    fi=((1+alpha_value_prime)/fi_sub1)^2*R_6A*gamma_t*tau_M/(R_t*gamma_6A);
                    M6A=sqrt(2*fi/(1-2*gamma_6A*fi+sqrt(1-2*(gamma_6A+1)*fi)));
                    A16_A6= (alpha_value_prime*sqrt(Tt16_Tt6)) / (M16/M6*sqrt((gamma_c*R_t*(1+((gamma_c-1)/2)*M16^2)) / (gamma_t*R_c*(1+((gamma_t-1)/2)*M6^2))));
                    MFP_6=(M6*sqrt(gamma_t/R_t)) / ((1+((gamma_t-1)/2)*M6^2)^((gamma_t+1)/(2*(gamma_t-1))));
                    MFP_6A=(M6A*sqrt(gamma_6A/R_6A)) / ((1+((gamma_6A-1)/2)*M6A^2)^((gamma_6A+1)/(2*(gamma_6A-1))));
                    pi_Mideal= ((1+alpha_value_prime)*sqrt(tau_M)/(1+A16_A6))*(MFP_6/MFP_6A);
                    pi_M=pi_Mmax*pi_Mideal;


                    %% Afterburner
                    selection_AB=app.AfterburnerSwitch.Value;

                    if strcmpi(selection_AB,"on") % ----- Afterburner ON -----
                        %% Afterburner Parameters
                        cp_AB = app.c_p_ABJkgcircKEditField.Value;        %afterburner pressure coefficient
                        gamma_AB = app.gamma_ABEditField.Value;         %specific heat ratio in afterburner
                        eta_AB = app.eta_ABEditField.Value;          %afterburner efficiency
                        pi_AB = app.pi_ABEditField.Value;           %afterburner pressure ratio
                        T_t7 = app.T_t7circKEditField.Value;            %afterburner exit temperature

                        %% Afterburner Section
                        R_AB= (gamma_AB-1)/gamma_AB*cp_AB;
                        R_9=R_AB;
                        gamma_9=gamma_AB;

                        tau_lambda_AB= (cp_AB*T_t7)/(cp_c*T0);
                        T_t6a= T_t4*tau_t*tau_M;
                        h_t6a=interp1(T_values,h_values(:,1),T_t6a);      % h_t6a at f=0 and T=T_t6

                        % Iteration With Interpolation
                        iter_AB=1;
                        error_AB=1;
                        max_iter_AB=3;
                        error_threshold_AB=1e-5;
                        f_AB=0.0338;
                        while (iter_AB<=max_iter_AB) && (error_AB>error_threshold_AB)
                            f_old_AB=f_AB;
                            first_interpolation_AB = arrayfun(@(row) interp1(f_values, h_values(row, :), f_AB, 'linear'), 1:length(T_values));
                            h_t7 = interp1(T_values, first_interpolation_AB, T_t7, 'linear');
                            f_AB=(1+f/(1+alpha_value))*(h_t7-h_t6a)/(eta_AB*h_PR-h_t7);
                            error_AB=abs(f_old_AB-f_AB);
                            iter_AB=iter_AB+1;
                        end
                        Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_M*pi_AB*pi_n;
                        T9_T0= (T_t7/T0)/(Pt9_P9^((gamma_9-1)/gamma_9));

                    elseif strcmpi(selection_AB,"off") % ----- Afterburner OFF -----
                        R_9=R_6A;
                        gamma_9=gamma_6A;
                        f_AB=0;
                        Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_M*pi_n;
                        T9_T0= (T_t4*tau_t*tau_M/T0)/(Pt9_P9^((gamma_9-1)/gamma_9));

                    end
                    M9=sqrt(2/(gamma_9-1)*(Pt9_P9^((gamma_9-1)/gamma_9)-1));
                    V9_a0=M9*sqrt(gamma_9*R_9*T9_T0/(gamma_c*R_c));
                    fo=f/(1+alpha_value)+f_AB;
                    F_m0=a0_speed*((1+fo)*V9_a0-M0+(1+fo)*R_9*T9_T0*(1-P0_P9)/(R_c*V9_a0*gamma_c));
                    S=fo/F_m0;
                    eta_propulsive= 2*V0*F_m0/(a0_speed^2*((1+fo)*V9_a0^2-M0^2));
                    eta_thermal= (a0_speed^2*((1+fo)*V9_a0^2-M0^2))/(2*fo*h_PR*1e3);
                    eta_overall=eta_propulsive*eta_thermal;
                    f_m0_numbers(end+1)=F_m0;
                    S_numbers(end+1)=S;
                    pi_c_numbers(end+1)=pi_c;
                end
                % 1 mach sayısı ve pi 2 to 5
                if app.AfterburnerSwitch.Value=="On"
                    mach_label= ['M = ' num2str(M0) ', AB= On'];
                    p= plot(app.UIAxes,pi_c_numbers ,f_m0_numbers,"--", 'DisplayName', mach_label);
                else
                    mach_label= ['M = ' num2str(M0) ', AB= Off'];
                    p= plot(app.UIAxes,pi_c_numbers ,f_m0_numbers,"-", 'DisplayName', mach_label);
                end
                
                p.MarkerFaceColor = p.Color;
                p.DataTipTemplate.DataTipRows(1).Label="\pi_{c} \Rightarrow";
                p.DataTipTemplate.DataTipRows(2).Label="F/m_{0} \Rightarrow";
                p.DataTipTemplate.DataTipRows(3).Label="M_{0} \Rightarrow"+M0;
                if app.AfterburnerSwitch.Value=="On"
                    p.DataTipTemplate.DataTipRows(4).Label="Afterburner \Rightarrow On";

                else
                    p.DataTipTemplate.DataTipRows(4).Label="Afterburner \Rightarrow Off";
                end
                f_m0_numbers=[];
                S_numbers=[];
                pi_c_numbers=[];
            end
            legend(app.UIAxes, 'show');
        end

        % Button pushed function: ClearButton
        function ClearButtonPushed(app, event)
            cla(app.UIAxes);
        end

        % Button pushed function: PlotButton_2
        function Plot2(app, event)
            pi_c_numbers=[];
            S_numbers=[];
            hold(app.UIAxes2, 'on');
            for M0=app.MachStart.Value:app.MachInterval.Value:app.MachEnd.Value
                for pi_c=app.pi_cStart.Value:app.pi_cInterval.Value:app.pi_cEnd.Value
                     %-------------------- INPUTS -----------------------------------
                    %% Air Inlet - Diffuser - Exhaust
                    pi_dmax = app.pi_d_maxEditField.Value;         % Diffuser max pressure ratio
                    T0 = app.T_0KcircEditField.Value;           % Temperature value at freestream
                    pi_n = app.pi_nEditField.Value;            % Nozzle pressure ratio
                    P0_P9 = app.P_0P_9EditField.Value;              % Inlet and nozzle pressure ratio
                    %% Compressor
                    cp_c = app.c_pcJkgcircKEditField.Value;         % Compressor pressure coefficient
                    gamma_c = app.gamma_cEditField.Value;          % Specific Heat Ratio in Compressor
                    e_c = app.e_cEditField.Value;             % Compressor polytropic efficiency
                    pi_f = app.pi_fEditField.Value;              % Compressor pressure ratio
                    %% Burner
                    pi_b = app.pi_bEditField.Value;            % Burner pressure ratio
                    eta_b = app.eta_bEditField.Value;          % Burner efficiency
                    T_t4 = app.T_t4circKEditField.Value;         % Burner inlet temperature
                    h_PR = app.h_PRkJkgEditField.Value;         % h_PR
                    %% Turbine
                    cp_t = app.c_ptJkgcircKEditField.Value;         % Turbine pressure coefficient
                    e_t = app.e_tEditField.Value;             % Turbine polytropic effiency
                    gamma_t = app.gamma_tEditField.Value;          % Specific heat ratio in turbine
                    M6 = app.M_6EditField.Value;               % Turbine exit mach number
                    % Mixed
                    eta_m = app.eta_mEditField.Value;           % mixed efficieny
                    % --------------------------------------------------------------

                    %% Air Section
                    R_t=(gamma_t-1)/gamma_t*cp_t;
                    R_c=(gamma_c-1)/gamma_c*cp_c;
                    a0_speed= sqrt(gamma_c*R_c*T0);
                    V0= a0_speed*M0;

                    %% Ram Section
                    tau_r = 1 + (((gamma_c - 1) / 2) * M0^2);      % Ram temperature ratio
                    pi_r = tau_r^(gamma_c / (gamma_c - 1));         % Ram pressure ratio, isentropic relation

                    % eta_r calculation
                    if M0<=1
                        eta_r=1;
                    else
                        eta_r= 1-0.075*(M0-1)^1.35;
                    end

                    %% Diffuser Section
                    pi_d = pi_dmax* eta_r;      % Diffuser pressure ratio
                    tau_d=1;                    % Highly adiabatic

                    %% Compressor Section
                    tau_c= pi_c^((gamma_c -1)/(gamma_c*e_c));           % tau_c calculation
                    eta_c= (pi_c^((gamma_c-1)/gamma_c)-1)/(tau_c-1);    % eta_c calculation
                    T_t3= T0 * tau_r * tau_d * tau_c;                  % Total temperature at st3. calculation
                    tau_lambda= (cp_t*T_t4)/(cp_c*T0);                 % tau_lambda calculation

                    %% Burner Section
                    % Read the appendix table-D in Excel
                    data=readtable("appendix D.xlsx", "VariableNamingRule","preserve");
                    T_values= data{:,1};                                % T values in table
                    f_values= [0, 0.0169, 0.0338, 0.0507, 0.0676];      % f values in table
                    h_values= data{:,3:end};                            % h values in table

                    h_t3=interp1(T_values,h_values(:,1),T_t3);      % h_t3 at f=0 and T=T_t3

                    % Iteration With Interpolation
                    iter=1;
                    error=1e-3;
                    max_iter=6;
                    error_threshold=1e-6;
                    f=0.0338;
                    while (iter<=max_iter) && (error>error_threshold)
                        f_old=f;
                        first_interpolation = arrayfun(@(row) interp1(f_values, h_values(row, :), f, 'linear'), 1:length(T_values));
                        h_t4 = interp1(T_values, first_interpolation, T_t4, 'linear');
                        f=(h_t4-h_t3)/(eta_b*h_PR-h_t4);
                        error=abs(f_old-f);
                        iter=iter+1;
                    end
                    tau_b=T_t4/T_t3; % Burner temperature ratio
                    %% Mixed
                    pi_Mmax = app.pi_M_maxEditField.Value;         %ideal constant area mixer
                    %% Fan
                    e_f = app.e_fEditField.Value;             %fan polytropic efficiency

                    %% Fan Section
                    tau_f= pi_f^((gamma_c-1)/(gamma_c*e_f));            %isentropic relation
                    eta_f= (pi_f^((gamma_c-1)/gamma_c)-1)/(tau_f-1);    %fan efficiency

                    %% Fan Alpha Value
                    alpha_value= (eta_m*(1+f)*(tau_lambda/tau_r)*(1-(pi_f/(pi_c*pi_b))^((gamma_t-1)*e_t/gamma_t))-(tau_c-1))/(tau_f-1);   %bypass ratio
                    if alpha_value<0
                        alpha_value=0;
                    end
                    %% Turbine
                    tau_t= 1- (tau_r/((1+f)*eta_m*tau_lambda))*(tau_c-1+alpha_value*(tau_f-1));     %
                    pi_t= tau_t^(gamma_t/((gamma_t-1)*e_t));                                        %
                    eta_t= (1-tau_t)/(1-tau_t^(1/e_t));
                    R_t=(gamma_t-1)/gamma_t*cp_t;

                    %% Other Calculation
                    Pt16_Pt6= pi_f/(pi_c*pi_b*pi_t);
                    M16= sqrt(2/(gamma_c-1)*((Pt16_Pt6*(1+(gamma_t-1)/2*M6^2)^(gamma_t/(gamma_t-1)))^((gamma_c-1)/gamma_c)-1));
                    alpha_value_prime= alpha_value/(1+f);
                    cp_6A=(cp_t+alpha_value_prime*cp_c)/(1+alpha_value_prime);
                    R_6A=(R_t+alpha_value_prime*R_c)/(1+alpha_value_prime);
                    gamma_6A=cp_6A/(cp_6A-R_6A);
                    Tt16_Tt6=T0*tau_r*tau_f/(T_t4*tau_t);
                    tau_M=(cp_t/cp_6A)*(1+alpha_value_prime*(cp_c/cp_t)*Tt16_Tt6)/(1+alpha_value_prime);
                    fi_6= (M6^2*(1+((gamma_t-1)/2)*M6^2))/(1+gamma_t*M6^2)^2;
                    fi_16= (M16^2*(1+((gamma_c-1)/2)*M16^2))/(1+gamma_c*M16^2)^2;
                    fi_sub1= (1/sqrt(fi_6))+alpha_value_prime*sqrt(R_c*gamma_t*Tt16_Tt6/(R_t*gamma_c*fi_16));
                    fi=((1+alpha_value_prime)/fi_sub1)^2*R_6A*gamma_t*tau_M/(R_t*gamma_6A);
                    M6A=sqrt(2*fi/(1-2*gamma_6A*fi+sqrt(1-2*(gamma_6A+1)*fi)));
                    A16_A6= (alpha_value_prime*sqrt(Tt16_Tt6)) / (M16/M6*sqrt((gamma_c*R_t*(1+((gamma_c-1)/2)*M16^2)) / (gamma_t*R_c*(1+((gamma_t-1)/2)*M6^2))));
                    MFP_6=(M6*sqrt(gamma_t/R_t)) / ((1+((gamma_t-1)/2)*M6^2)^((gamma_t+1)/(2*(gamma_t-1))));
                    MFP_6A=(M6A*sqrt(gamma_6A/R_6A)) / ((1+((gamma_6A-1)/2)*M6A^2)^((gamma_6A+1)/(2*(gamma_6A-1))));
                    pi_Mideal= ((1+alpha_value_prime)*sqrt(tau_M)/(1+A16_A6))*(MFP_6/MFP_6A);
                    pi_M=pi_Mmax*pi_Mideal;


                    %% Afterburner
                    selection_AB=app.AfterburnerSwitch.Value;

                    if strcmpi(selection_AB,"on") % ----- Afterburner ON -----
                        %% Afterburner Parameters
                        cp_AB = app.c_p_ABJkgcircKEditField.Value;        %afterburner pressure coefficient
                        gamma_AB = app.gamma_ABEditField.Value;         %specific heat ratio in afterburner
                        eta_AB = app.eta_ABEditField.Value;          %afterburner efficiency
                        pi_AB = app.pi_ABEditField.Value;           %afterburner pressure ratio
                        T_t7 = app.T_t7circKEditField.Value;            %afterburner exit temperature

                        %% Afterburner Section
                        R_AB= (gamma_AB-1)/gamma_AB*cp_AB;
                        R_9=R_AB;
                        gamma_9=gamma_AB;

                        tau_lambda_AB= (cp_AB*T_t7)/(cp_c*T0);
                        T_t6a= T_t4*tau_t*tau_M;
                        h_t6a=interp1(T_values,h_values(:,1),T_t6a);      % h_t6a at f=0 and T=T_t6

                        % Iteration With Interpolation
                        iter_AB=1;
                        error_AB=1;
                        max_iter_AB=3;
                        error_threshold_AB=1e-5;
                        f_AB=0.0338;
                        while (iter_AB<=max_iter_AB) && (error_AB>error_threshold_AB)
                            f_old_AB=f_AB;
                            first_interpolation_AB = arrayfun(@(row) interp1(f_values, h_values(row, :), f_AB, 'linear'), 1:length(T_values));
                            h_t7 = interp1(T_values, first_interpolation_AB, T_t7, 'linear');
                            f_AB=(1+f/(1+alpha_value))*(h_t7-h_t6a)/(eta_AB*h_PR-h_t7);
                            error_AB=abs(f_old_AB-f_AB);
                            iter_AB=iter_AB+1;
                        end
                        Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_M*pi_AB*pi_n;
                        T9_T0= (T_t7/T0)/(Pt9_P9^((gamma_9-1)/gamma_9));

                    elseif strcmpi(selection_AB,"off") % ----- Afterburner OFF -----
                        R_9=R_6A;
                        gamma_9=gamma_6A;
                        f_AB=0;
                        Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_M*pi_n;
                        T9_T0= (T_t4*tau_t*tau_M/T0)/(Pt9_P9^((gamma_9-1)/gamma_9));

                    end
                    M9=sqrt(2/(gamma_9-1)*(Pt9_P9^((gamma_9-1)/gamma_9)-1));
                    V9_a0=M9*sqrt(gamma_9*R_9*T9_T0/(gamma_c*R_c));
                    fo=f/(1+alpha_value)+f_AB;
                    F_m0=a0_speed*((1+fo)*V9_a0-M0+(1+fo)*R_9*T9_T0*(1-P0_P9)/(R_c*V9_a0*gamma_c));
                    S=fo/F_m0;
                    eta_propulsive= 2*V0*F_m0/(a0_speed^2*((1+fo)*V9_a0^2-M0^2));
                    eta_thermal= (a0_speed^2*((1+fo)*V9_a0^2-M0^2))/(2*fo*h_PR*1e3);
                    eta_overall=eta_propulsive*eta_thermal;
                    pi_c_numbers(end+1)=pi_c;
                    S_numbers(end+1)=S;
                end
                % 1 mach sayısı ve pi 2 to 5
                if app.AfterburnerSwitch.Value=="On"
                    mach_label= ['M = ' num2str(M0) ', AB= On'];
                    p= plot(app.UIAxes2,pi_c_numbers ,S_numbers,"--", 'DisplayName', mach_label);
                else
                    mach_label= ['M = ' num2str(M0) ', AB= Off'];
                    p= plot(app.UIAxes2,pi_c_numbers ,S_numbers,"-", 'DisplayName', mach_label);
                end
                
                p.MarkerFaceColor = p.Color;
                p.DataTipTemplate.DataTipRows(1).Label="\pi_{c} \Rightarrow";
                p.DataTipTemplate.DataTipRows(2).Label="S \Rightarrow";
                p.DataTipTemplate.DataTipRows(3).Label="M_{0} \Rightarrow"+M0;
                if app.AfterburnerSwitch.Value=="On"
                    p.DataTipTemplate.DataTipRows(4).Label="Afterburner \Rightarrow On";

                else
                    p.DataTipTemplate.DataTipRows(4).Label="Afterburner \Rightarrow Off";
                end
                S_numbers=[];
                pi_c_numbers=[];
            end
            legend(app.UIAxes2, 'show');
        end

        % Button pushed function: ClearButton_2
        function ClearButton_2Pushed(app, event)
            yyaxis(app.UIAxes2,"left")
            cla(app.UIAxes2);
            yyaxis(app.UIAxes2,"right")
            cla(app.UIAxes2);
        end

        % Button pushed function: PlotButton_3
        function Plot3(app, event)
            eta_th=[];
            pi_c_num=[];
            for M0=app.MachStart.Value:app.MachInterval.Value:app.MachEnd.Value
                for pi_c=app.pi_cStart.Value:app.pi_cInterval.Value:app.pi_cEnd.Value
                     %-------------------- INPUTS -----------------------------------
                    %% Air Inlet - Diffuser - Exhaust
                    pi_dmax = app.pi_d_maxEditField.Value;         % Diffuser max pressure ratio
                    T0 = app.T_0KcircEditField.Value;           % Temperature value at freestream
                    pi_n = app.pi_nEditField.Value;            % Nozzle pressure ratio
                    P0_P9 = app.P_0P_9EditField.Value;              % Inlet and nozzle pressure ratio
                    %% Compressor
                    cp_c = app.c_pcJkgcircKEditField.Value;         % Compressor pressure coefficient
                    gamma_c = app.gamma_cEditField.Value;          % Specific Heat Ratio in Compressor
                    e_c = app.e_cEditField.Value;             % Compressor polytropic efficiency
                    pi_f = app.pi_fEditField.Value;              % Compressor pressure ratio
                    %% Burner
                    pi_b = app.pi_bEditField.Value;            % Burner pressure ratio
                    eta_b = app.eta_bEditField.Value;          % Burner efficiency
                    T_t4 = app.T_t4circKEditField.Value;         % Burner inlet temperature
                    h_PR = app.h_PRkJkgEditField.Value;         % h_PR
                    %% Turbine
                    cp_t = app.c_ptJkgcircKEditField.Value;         % Turbine pressure coefficient
                    e_t = app.e_tEditField.Value;             % Turbine polytropic effiency
                    gamma_t = app.gamma_tEditField.Value;          % Specific heat ratio in turbine
                    M6 = app.M_6EditField.Value;               % Turbine exit mach number
                    % Mixed
                    eta_m = app.eta_mEditField.Value;           % mixed efficieny
                    % --------------------------------------------------------------

                    %% Air Section
                    R_t=(gamma_t-1)/gamma_t*cp_t;
                    R_c=(gamma_c-1)/gamma_c*cp_c;
                    a0_speed= sqrt(gamma_c*R_c*T0);
                    V0= a0_speed*M0;

                    %% Ram Section
                    tau_r = 1 + (((gamma_c - 1) / 2) * M0^2);      % Ram temperature ratio
                    pi_r = tau_r^(gamma_c / (gamma_c - 1));         % Ram pressure ratio, isentropic relation

                    % eta_r calculation
                    if M0<=1
                        eta_r=1;
                    else
                        eta_r= 1-0.075*(M0-1)^1.35;
                    end

                    %% Diffuser Section
                    pi_d = pi_dmax* eta_r;      % Diffuser pressure ratio
                    tau_d=1;                    % Highly adiabatic

                    %% Compressor Section
                    tau_c= pi_c^((gamma_c -1)/(gamma_c*e_c));           % tau_c calculation
                    eta_c= (pi_c^((gamma_c-1)/gamma_c)-1)/(tau_c-1);    % eta_c calculation
                    T_t3= T0 * tau_r * tau_d * tau_c;                  % Total temperature at st3. calculation
                    tau_lambda= (cp_t*T_t4)/(cp_c*T0);                 % tau_lambda calculation

                    %% Burner Section
                    % Read the appendix table-D in Excel
                    data=readtable("appendix D.xlsx", "VariableNamingRule","preserve");
                    T_values= data{:,1};                                % T values in table
                    f_values= [0, 0.0169, 0.0338, 0.0507, 0.0676];      % f values in table
                    h_values= data{:,3:end};                            % h values in table

                    h_t3=interp1(T_values,h_values(:,1),T_t3);      % h_t3 at f=0 and T=T_t3

                    % Iteration With Interpolation
                    iter=1;
                    error=1e-3;
                    max_iter=6;
                    error_threshold=1e-6;
                    f=0.0338;
                    while (iter<=max_iter) && (error>error_threshold)
                        f_old=f;
                        first_interpolation = arrayfun(@(row) interp1(f_values, h_values(row, :), f, 'linear'), 1:length(T_values));
                        h_t4 = interp1(T_values, first_interpolation, T_t4, 'linear');
                        f=(h_t4-h_t3)/(eta_b*h_PR-h_t4);
                        error=abs(f_old-f);
                        iter=iter+1;
                    end
                    tau_b=T_t4/T_t3; % Burner temperature ratio
                    %% Mixed
                    pi_Mmax = app.pi_M_maxEditField.Value;         %ideal constant area mixer
                    %% Fan
                    e_f = app.e_fEditField.Value;             %fan polytropic efficiency

                    %% Fan Section
                    tau_f= pi_f^((gamma_c-1)/(gamma_c*e_f));            %isentropic relation
                    eta_f= (pi_f^((gamma_c-1)/gamma_c)-1)/(tau_f-1);    %fan efficiency

                    %% Fan Alpha Value
                    alpha_value= (eta_m*(1+f)*(tau_lambda/tau_r)*(1-(pi_f/(pi_c*pi_b))^((gamma_t-1)*e_t/gamma_t))-(tau_c-1))/(tau_f-1);   %bypass ratio
                    if alpha_value<0
                        alpha_value=0;
                    end
                    %% Turbine
                    tau_t= 1- (tau_r/((1+f)*eta_m*tau_lambda))*(tau_c-1+alpha_value*(tau_f-1));     %
                    pi_t= tau_t^(gamma_t/((gamma_t-1)*e_t));                                        %
                    eta_t= (1-tau_t)/(1-tau_t^(1/e_t));
                    R_t=(gamma_t-1)/gamma_t*cp_t;

                    %% Other Calculation
                    Pt16_Pt6= pi_f/(pi_c*pi_b*pi_t);
                    M16= sqrt(2/(gamma_c-1)*((Pt16_Pt6*(1+(gamma_t-1)/2*M6^2)^(gamma_t/(gamma_t-1)))^((gamma_c-1)/gamma_c)-1));
                    alpha_value_prime= alpha_value/(1+f);
                    cp_6A=(cp_t+alpha_value_prime*cp_c)/(1+alpha_value_prime);
                    R_6A=(R_t+alpha_value_prime*R_c)/(1+alpha_value_prime);
                    gamma_6A=cp_6A/(cp_6A-R_6A);
                    Tt16_Tt6=T0*tau_r*tau_f/(T_t4*tau_t);
                    tau_M=(cp_t/cp_6A)*(1+alpha_value_prime*(cp_c/cp_t)*Tt16_Tt6)/(1+alpha_value_prime);
                    fi_6= (M6^2*(1+((gamma_t-1)/2)*M6^2))/(1+gamma_t*M6^2)^2;
                    fi_16= (M16^2*(1+((gamma_c-1)/2)*M16^2))/(1+gamma_c*M16^2)^2;
                    fi_sub1= (1/sqrt(fi_6))+alpha_value_prime*sqrt(R_c*gamma_t*Tt16_Tt6/(R_t*gamma_c*fi_16));
                    fi=((1+alpha_value_prime)/fi_sub1)^2*R_6A*gamma_t*tau_M/(R_t*gamma_6A);
                    M6A=sqrt(2*fi/(1-2*gamma_6A*fi+sqrt(1-2*(gamma_6A+1)*fi)));
                    A16_A6= (alpha_value_prime*sqrt(Tt16_Tt6)) / (M16/M6*sqrt((gamma_c*R_t*(1+((gamma_c-1)/2)*M16^2)) / (gamma_t*R_c*(1+((gamma_t-1)/2)*M6^2))));
                    MFP_6=(M6*sqrt(gamma_t/R_t)) / ((1+((gamma_t-1)/2)*M6^2)^((gamma_t+1)/(2*(gamma_t-1))));
                    MFP_6A=(M6A*sqrt(gamma_6A/R_6A)) / ((1+((gamma_6A-1)/2)*M6A^2)^((gamma_6A+1)/(2*(gamma_6A-1))));
                    pi_Mideal= ((1+alpha_value_prime)*sqrt(tau_M)/(1+A16_A6))*(MFP_6/MFP_6A);
                    pi_M=pi_Mmax*pi_Mideal;


                    %% Afterburner
                    selection_AB=app.AfterburnerSwitch.Value;

                    if strcmpi(selection_AB,"on") % ----- Afterburner ON -----
                        %% Afterburner Parameters
                        cp_AB = app.c_p_ABJkgcircKEditField.Value;        %afterburner pressure coefficient
                        gamma_AB = app.gamma_ABEditField.Value;         %specific heat ratio in afterburner
                        eta_AB = app.eta_ABEditField.Value;          %afterburner efficiency
                        pi_AB = app.pi_ABEditField.Value;           %afterburner pressure ratio
                        T_t7 = app.T_t7circKEditField.Value;            %afterburner exit temperature

                        %% Afterburner Section
                        R_AB= (gamma_AB-1)/gamma_AB*cp_AB;
                        R_9=R_AB;
                        gamma_9=gamma_AB;

                        tau_lambda_AB= (cp_AB*T_t7)/(cp_c*T0);
                        T_t6a= T_t4*tau_t*tau_M;
                        h_t6a=interp1(T_values,h_values(:,1),T_t6a);      % h_t6a at f=0 and T=T_t6

                        % Iteration With Interpolation
                        iter_AB=1;
                        error_AB=1;
                        max_iter_AB=3;
                        error_threshold_AB=1e-5;
                        f_AB=0.0338;
                        while (iter_AB<=max_iter_AB) && (error_AB>error_threshold_AB)
                            f_old_AB=f_AB;
                            first_interpolation_AB = arrayfun(@(row) interp1(f_values, h_values(row, :), f_AB, 'linear'), 1:length(T_values));
                            h_t7 = interp1(T_values, first_interpolation_AB, T_t7, 'linear');
                            f_AB=(1+f/(1+alpha_value))*(h_t7-h_t6a)/(eta_AB*h_PR-h_t7);
                            error_AB=abs(f_old_AB-f_AB);
                            iter_AB=iter_AB+1;
                        end
                        Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_M*pi_AB*pi_n;
                        T9_T0= (T_t7/T0)/(Pt9_P9^((gamma_9-1)/gamma_9));

                    elseif strcmpi(selection_AB,"off") % ----- Afterburner OFF -----
                        R_9=R_6A;
                        gamma_9=gamma_6A;
                        f_AB=0;
                        Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_M*pi_n;
                        T9_T0= (T_t4*tau_t*tau_M/T0)/(Pt9_P9^((gamma_9-1)/gamma_9));

                    end
                    M9=sqrt(2/(gamma_9-1)*(Pt9_P9^((gamma_9-1)/gamma_9)-1));
                    V9_a0=M9*sqrt(gamma_9*R_9*T9_T0/(gamma_c*R_c));
                    fo=f/(1+alpha_value)+f_AB;
                    F_m0=a0_speed*((1+fo)*V9_a0-M0+(1+fo)*R_9*T9_T0*(1-P0_P9)/(R_c*V9_a0*gamma_c));
                    S=fo/F_m0;
                    eta_propulsive= 2*V0*F_m0/(a0_speed^2*((1+fo)*V9_a0^2-M0^2));
                    eta_thermal= (a0_speed^2*((1+fo)*V9_a0^2-M0^2))/(2*fo*h_PR*1e3);
                    eta_overall=eta_propulsive*eta_thermal;
                    pi_c_num(end+1)=pi_c;
                    eta_th(end+1)=eta_thermal;
                end
                % 1 mach sayısı ve pi 2 to 5
                if app.AfterburnerSwitch.Value=="On"
                    mach_label= ['M = ' num2str(M0) ', AB= On'];
                    p= plot(app.UIAxes3,pi_c_num,eta_th,"--",'DisplayName', mach_label);
                else
                    mach_label= ['M = ' num2str(M0) ', AB= Off'];
                    p= plot(app.UIAxes3,pi_c_num,eta_th,"-",'DisplayName', mach_label);
                end
                
                p.MarkerFaceColor = p.Color;
                p.DataTipTemplate.DataTipRows(1).Label="\pi_{c} \Rightarrow";
                p.DataTipTemplate.DataTipRows(2).Label="\eta_{Th.} \Rightarrow";
                p.DataTipTemplate.DataTipRows(3).Label="M_{0} \Rightarrow"+M0;
                if app.AfterburnerSwitch.Value=="On"
                    p.DataTipTemplate.DataTipRows(4).Label="Afterburner \Rightarrow On";
                else
                    p.DataTipTemplate.DataTipRows(4).Label="Afterburner \Rightarrow Off";
                end
                hold(app.UIAxes3, 'on');
                eta_th=[];
                pi_c_num=[];
            end
            legend(app.UIAxes3, 'show');
        end

        % Button pushed function: ClearButton_3
        function ClearButton_3Pushed(app, event)
            cla(app.UIAxes3);
        end

        % Button pushed function: PlotButton_4
        function Plot4(app, event)
            eta_pr=[];
            pi_c_num=[];
            for M0=app.MachStart.Value:app.MachInterval.Value:app.MachEnd.Value
                for pi_c=app.pi_cStart.Value:app.pi_cInterval.Value:app.pi_cEnd.Value
                     %-------------------- INPUTS -----------------------------------
                    %% Air Inlet - Diffuser - Exhaust
                    pi_dmax = app.pi_d_maxEditField.Value;         % Diffuser max pressure ratio
                    T0 = app.T_0KcircEditField.Value;           % Temperature value at freestream
                    pi_n = app.pi_nEditField.Value;            % Nozzle pressure ratio
                    P0_P9 = app.P_0P_9EditField.Value;              % Inlet and nozzle pressure ratio
                    %% Compressor
                    cp_c = app.c_pcJkgcircKEditField.Value;         % Compressor pressure coefficient
                    gamma_c = app.gamma_cEditField.Value;          % Specific Heat Ratio in Compressor
                    e_c = app.e_cEditField.Value;             % Compressor polytropic efficiency
                    pi_f = app.pi_fEditField.Value;              % Compressor pressure ratio
                    %% Burner
                    pi_b = app.pi_bEditField.Value;            % Burner pressure ratio
                    eta_b = app.eta_bEditField.Value;          % Burner efficiency
                    T_t4 = app.T_t4circKEditField.Value;         % Burner inlet temperature
                    h_PR = app.h_PRkJkgEditField.Value;         % h_PR
                    %% Turbine
                    cp_t = app.c_ptJkgcircKEditField.Value;         % Turbine pressure coefficient
                    e_t = app.e_tEditField.Value;             % Turbine polytropic effiency
                    gamma_t = app.gamma_tEditField.Value;          % Specific heat ratio in turbine
                    M6 = app.M_6EditField.Value;               % Turbine exit mach number
                    % Mixed
                    eta_m = app.eta_mEditField.Value;           % mixed efficieny
                    % --------------------------------------------------------------

                    %% Air Section
                    R_t=(gamma_t-1)/gamma_t*cp_t;
                    R_c=(gamma_c-1)/gamma_c*cp_c;
                    a0_speed= sqrt(gamma_c*R_c*T0);
                    V0= a0_speed*M0;

                    %% Ram Section
                    tau_r = 1 + (((gamma_c - 1) / 2) * M0^2);      % Ram temperature ratio
                    pi_r = tau_r^(gamma_c / (gamma_c - 1));         % Ram pressure ratio, isentropic relation

                    % eta_r calculation
                    if M0<=1
                        eta_r=1;
                    else
                        eta_r= 1-0.075*(M0-1)^1.35;
                    end

                    %% Diffuser Section
                    pi_d = pi_dmax* eta_r;      % Diffuser pressure ratio
                    tau_d=1;                    % Highly adiabatic

                    %% Compressor Section
                    tau_c= pi_c^((gamma_c -1)/(gamma_c*e_c));           % tau_c calculation
                    eta_c= (pi_c^((gamma_c-1)/gamma_c)-1)/(tau_c-1);    % eta_c calculation
                    T_t3= T0 * tau_r * tau_d * tau_c;                  % Total temperature at st3. calculation
                    tau_lambda= (cp_t*T_t4)/(cp_c*T0);                 % tau_lambda calculation

                    %% Burner Section
                    % Read the appendix table-D in Excel
                    data=readtable("appendix D.xlsx", "VariableNamingRule","preserve");
                    T_values= data{:,1};                                % T values in table
                    f_values= [0, 0.0169, 0.0338, 0.0507, 0.0676];      % f values in table
                    h_values= data{:,3:end};                            % h values in table

                    h_t3=interp1(T_values,h_values(:,1),T_t3);      % h_t3 at f=0 and T=T_t3

                    % Iteration With Interpolation
                    iter=1;
                    error=1e-3;
                    max_iter=6;
                    error_threshold=1e-6;
                    f=0.0338;
                    while (iter<=max_iter) && (error>error_threshold)
                        f_old=f;
                        first_interpolation = arrayfun(@(row) interp1(f_values, h_values(row, :), f, 'linear'), 1:length(T_values));
                        h_t4 = interp1(T_values, first_interpolation, T_t4, 'linear');
                        f=(h_t4-h_t3)/(eta_b*h_PR-h_t4);
                        error=abs(f_old-f);
                        iter=iter+1;
                    end
                    tau_b=T_t4/T_t3; % Burner temperature ratio
                    %% Mixed
                    pi_Mmax = app.pi_M_maxEditField.Value;         %ideal constant area mixer
                    %% Fan
                    e_f = app.e_fEditField.Value;             %fan polytropic efficiency

                    %% Fan Section
                    tau_f= pi_f^((gamma_c-1)/(gamma_c*e_f));            %isentropic relation
                    eta_f= (pi_f^((gamma_c-1)/gamma_c)-1)/(tau_f-1);    %fan efficiency

                    %% Fan Alpha Value
                    alpha_value= (eta_m*(1+f)*(tau_lambda/tau_r)*(1-(pi_f/(pi_c*pi_b))^((gamma_t-1)*e_t/gamma_t))-(tau_c-1))/(tau_f-1);   %bypass ratio
                    if alpha_value<0
                        alpha_value=0;
                    end
                    %% Turbine
                    tau_t= 1- (tau_r/((1+f)*eta_m*tau_lambda))*(tau_c-1+alpha_value*(tau_f-1));     %
                    pi_t= tau_t^(gamma_t/((gamma_t-1)*e_t));                                        %
                    eta_t= (1-tau_t)/(1-tau_t^(1/e_t));
                    R_t=(gamma_t-1)/gamma_t*cp_t;

                    %% Other Calculation
                    Pt16_Pt6= pi_f/(pi_c*pi_b*pi_t);
                    M16= sqrt(2/(gamma_c-1)*((Pt16_Pt6*(1+(gamma_t-1)/2*M6^2)^(gamma_t/(gamma_t-1)))^((gamma_c-1)/gamma_c)-1));
                    alpha_value_prime= alpha_value/(1+f);
                    cp_6A=(cp_t+alpha_value_prime*cp_c)/(1+alpha_value_prime);
                    R_6A=(R_t+alpha_value_prime*R_c)/(1+alpha_value_prime);
                    gamma_6A=cp_6A/(cp_6A-R_6A);
                    Tt16_Tt6=T0*tau_r*tau_f/(T_t4*tau_t);
                    tau_M=(cp_t/cp_6A)*(1+alpha_value_prime*(cp_c/cp_t)*Tt16_Tt6)/(1+alpha_value_prime);
                    fi_6= (M6^2*(1+((gamma_t-1)/2)*M6^2))/(1+gamma_t*M6^2)^2;
                    fi_16= (M16^2*(1+((gamma_c-1)/2)*M16^2))/(1+gamma_c*M16^2)^2;
                    fi_sub1= (1/sqrt(fi_6))+alpha_value_prime*sqrt(R_c*gamma_t*Tt16_Tt6/(R_t*gamma_c*fi_16));
                    fi=((1+alpha_value_prime)/fi_sub1)^2*R_6A*gamma_t*tau_M/(R_t*gamma_6A);
                    M6A=sqrt(2*fi/(1-2*gamma_6A*fi+sqrt(1-2*(gamma_6A+1)*fi)));
                    A16_A6= (alpha_value_prime*sqrt(Tt16_Tt6)) / (M16/M6*sqrt((gamma_c*R_t*(1+((gamma_c-1)/2)*M16^2)) / (gamma_t*R_c*(1+((gamma_t-1)/2)*M6^2))));
                    MFP_6=(M6*sqrt(gamma_t/R_t)) / ((1+((gamma_t-1)/2)*M6^2)^((gamma_t+1)/(2*(gamma_t-1))));
                    MFP_6A=(M6A*sqrt(gamma_6A/R_6A)) / ((1+((gamma_6A-1)/2)*M6A^2)^((gamma_6A+1)/(2*(gamma_6A-1))));
                    pi_Mideal= ((1+alpha_value_prime)*sqrt(tau_M)/(1+A16_A6))*(MFP_6/MFP_6A);
                    pi_M=pi_Mmax*pi_Mideal;


                    %% Afterburner
                    selection_AB=app.AfterburnerSwitch.Value;

                    if strcmpi(selection_AB,"on") % ----- Afterburner ON -----
                        %% Afterburner Parameters
                        cp_AB = app.c_p_ABJkgcircKEditField.Value;        %afterburner pressure coefficient
                        gamma_AB = app.gamma_ABEditField.Value;         %specific heat ratio in afterburner
                        eta_AB = app.eta_ABEditField.Value;          %afterburner efficiency
                        pi_AB = app.pi_ABEditField.Value;           %afterburner pressure ratio
                        T_t7 = app.T_t7circKEditField.Value;            %afterburner exit temperature

                        %% Afterburner Section
                        R_AB= (gamma_AB-1)/gamma_AB*cp_AB;
                        R_9=R_AB;
                        gamma_9=gamma_AB;

                        tau_lambda_AB= (cp_AB*T_t7)/(cp_c*T0);
                        T_t6a= T_t4*tau_t*tau_M;
                        h_t6a=interp1(T_values,h_values(:,1),T_t6a);      % h_t6a at f=0 and T=T_t6

                        % Iteration With Interpolation
                        iter_AB=1;
                        error_AB=1;
                        max_iter_AB=3;
                        error_threshold_AB=1e-5;
                        f_AB=0.0338;
                        while (iter_AB<=max_iter_AB) && (error_AB>error_threshold_AB)
                            f_old_AB=f_AB;
                            first_interpolation_AB = arrayfun(@(row) interp1(f_values, h_values(row, :), f_AB, 'linear'), 1:length(T_values));
                            h_t7 = interp1(T_values, first_interpolation_AB, T_t7, 'linear');
                            f_AB=(1+f/(1+alpha_value))*(h_t7-h_t6a)/(eta_AB*h_PR-h_t7);
                            error_AB=abs(f_old_AB-f_AB);
                            iter_AB=iter_AB+1;
                        end
                        Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_M*pi_AB*pi_n;
                        T9_T0= (T_t7/T0)/(Pt9_P9^((gamma_9-1)/gamma_9));

                    elseif strcmpi(selection_AB,"off") % ----- Afterburner OFF -----
                        R_9=R_6A;
                        gamma_9=gamma_6A;
                        f_AB=0;
                        Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_M*pi_n;
                        T9_T0= (T_t4*tau_t*tau_M/T0)/(Pt9_P9^((gamma_9-1)/gamma_9));

                    end
                    M9=sqrt(2/(gamma_9-1)*(Pt9_P9^((gamma_9-1)/gamma_9)-1));
                    V9_a0=M9*sqrt(gamma_9*R_9*T9_T0/(gamma_c*R_c));
                    fo=f/(1+alpha_value)+f_AB;
                    F_m0=a0_speed*((1+fo)*V9_a0-M0+(1+fo)*R_9*T9_T0*(1-P0_P9)/(R_c*V9_a0*gamma_c));
                    S=fo/F_m0;
                    eta_propulsive= 2*V0*F_m0/(a0_speed^2*((1+fo)*V9_a0^2-M0^2));
                    eta_thermal= (a0_speed^2*((1+fo)*V9_a0^2-M0^2))/(2*fo*h_PR*1e3);
                    eta_overall=eta_propulsive*eta_thermal;
                    pi_c_num(end+1)=pi_c;
                    eta_pr(end+1)=eta_propulsive;
                end
                % 1 mach sayısı ve pi 2 to 5
                if app.AfterburnerSwitch.Value=="On"
                    mach_label= ['M = ' num2str(M0) ', AB= On'];
                    p= plot(app.UIAxes4,pi_c_num,eta_pr,"--",'DisplayName', mach_label);
                else
                    mach_label= ['M = ' num2str(M0) ', AB= Off'];
                    p= plot(app.UIAxes4,pi_c_num,eta_pr,"-",'DisplayName', mach_label);
                end
                
                p.MarkerFaceColor = p.Color;
                p.DataTipTemplate.DataTipRows(1).Label="\pi_{c} \Rightarrow";
                p.DataTipTemplate.DataTipRows(2).Label="\eta_{Pr.} \Rightarrow";
                p.DataTipTemplate.DataTipRows(3).Label="M_{0} \Rightarrow"+M0;
                if app.AfterburnerSwitch.Value=="On"
                    p.DataTipTemplate.DataTipRows(4).Label="Afterburner \Rightarrow On";
                else
                    p.DataTipTemplate.DataTipRows(4).Label="Afterburner \Rightarrow Off";
                end
                hold(app.UIAxes4, 'on');
                eta_pr=[];
                pi_c_num=[];
            end
            legend(app.UIAxes4, 'show');
        end

        % Button pushed function: ClearButton_4
        function ClearButton_4Pushed(app, event)
            cla(app.UIAxes4);
        end

        % Button pushed function: PlotButton_5
        function Plot5(app, event)
            eta_ov=[];
            pi_c_num=[];
            for M0=app.MachStart.Value:app.MachInterval.Value:app.MachEnd.Value
                for pi_c=app.pi_cStart.Value:app.pi_cInterval.Value:app.pi_cEnd.Value
                     %-------------------- INPUTS -----------------------------------
                    %% Air Inlet - Diffuser - Exhaust
                    pi_dmax = app.pi_d_maxEditField.Value;         % Diffuser max pressure ratio
                    T0 = app.T_0KcircEditField.Value;           % Temperature value at freestream
                    pi_n = app.pi_nEditField.Value;            % Nozzle pressure ratio
                    P0_P9 = app.P_0P_9EditField.Value;              % Inlet and nozzle pressure ratio
                    %% Compressor
                    cp_c = app.c_pcJkgcircKEditField.Value;         % Compressor pressure coefficient
                    gamma_c = app.gamma_cEditField.Value;          % Specific Heat Ratio in Compressor
                    e_c = app.e_cEditField.Value;             % Compressor polytropic efficiency
                    pi_f = app.pi_fEditField.Value;              % Fan pressure ratio
                    %% Burner
                    pi_b = app.pi_bEditField.Value;            % Burner pressure ratio
                    eta_b = app.eta_bEditField.Value;          % Burner efficiency
                    T_t4 = app.T_t4circKEditField.Value;         % Burner inlet temperature
                    h_PR = app.h_PRkJkgEditField.Value;         % h_PR
                    %% Turbine
                    cp_t = app.c_ptJkgcircKEditField.Value;         % Turbine pressure coefficient
                    e_t = app.e_tEditField.Value;             % Turbine polytropic effiency
                    gamma_t = app.gamma_tEditField.Value;          % Specific heat ratio in turbine
                    M6 = app.M_6EditField.Value;               % Turbine exit mach number
                    % Mixed
                    eta_m = app.eta_mEditField.Value;           % mixed efficieny
                    % --------------------------------------------------------------

                    %% Air Section
                    R_t=(gamma_t-1)/gamma_t*cp_t;
                    R_c=(gamma_c-1)/gamma_c*cp_c;
                    a0_speed= sqrt(gamma_c*R_c*T0);
                    V0= a0_speed*M0;

                    %% Ram Section
                    tau_r = 1 + (((gamma_c - 1) / 2) * M0^2);      % Ram temperature ratio
                    pi_r = tau_r^(gamma_c / (gamma_c - 1));         % Ram pressure ratio, isentropic relation

                    % eta_r calculation
                    if M0<=1
                        eta_r=1;
                    else
                        eta_r= 1-0.075*(M0-1)^1.35;
                    end

                    %% Diffuser Section
                    pi_d = pi_dmax* eta_r;      % Diffuser pressure ratio
                    tau_d=1;                    % Highly adiabatic

                    %% Compressor Section
                    tau_c= pi_c^((gamma_c -1)/(gamma_c*e_c));           % tau_c calculation
                    eta_c= (pi_c^((gamma_c-1)/gamma_c)-1)/(tau_c-1);    % eta_c calculation
                    T_t3= T0 * tau_r * tau_d * tau_c;                  % Total temperature at st3. calculation
                    tau_lambda= (cp_t*T_t4)/(cp_c*T0);                 % tau_lambda calculation

                    %% Burner Section
                    % Read the appendix table-D in Excel
                    data=readtable("appendix D.xlsx", "VariableNamingRule","preserve");
                    T_values= data{:,1};                                % T values in table
                    f_values= [0, 0.0169, 0.0338, 0.0507, 0.0676];      % f values in table
                    h_values= data{:,3:end};                            % h values in table

                    h_t3=interp1(T_values,h_values(:,1),T_t3);      % h_t3 at f=0 and T=T_t3

                    % Iteration With Interpolation
                    iter=1;
                    error=1e-3;
                    max_iter=6;
                    error_threshold=1e-6;
                    f=0.0338;
                    while (iter<=max_iter) && (error>error_threshold)
                        f_old=f;
                        first_interpolation = arrayfun(@(row) interp1(f_values, h_values(row, :), f, 'linear'), 1:length(T_values));
                        h_t4 = interp1(T_values, first_interpolation, T_t4, 'linear');
                        f=(h_t4-h_t3)/(eta_b*h_PR-h_t4);
                        error=abs(f_old-f);
                        iter=iter+1;
                    end
                    tau_b=T_t4/T_t3; % Burner temperature ratio
                    %% Mixed
                    pi_Mmax = app.pi_M_maxEditField.Value;         %ideal constant area mixer
                    %% Fan
                    e_f = app.e_fEditField.Value;             %fan polytropic efficiency

                    %% Fan Section
                    tau_f= pi_f^((gamma_c-1)/(gamma_c*e_f));            %isentropic relation
                    eta_f= (pi_f^((gamma_c-1)/gamma_c)-1)/(tau_f-1);    %fan efficiency

                    %% Fan Alpha Value
                    alpha_value= (eta_m*(1+f)*(tau_lambda/tau_r)*(1-(pi_f/(pi_c*pi_b))^((gamma_t-1)*e_t/gamma_t))-(tau_c-1))/(tau_f-1);   %bypass ratio
                    if alpha_value<0
                        alpha_value=0;
                    end
                    %% Turbine
                    tau_t= 1- (tau_r/((1+f)*eta_m*tau_lambda))*(tau_c-1+alpha_value*(tau_f-1));     %
                    pi_t= tau_t^(gamma_t/((gamma_t-1)*e_t));                                        %
                    eta_t= (1-tau_t)/(1-tau_t^(1/e_t));
                    R_t=(gamma_t-1)/gamma_t*cp_t;

                    %% Other Calculation
                    Pt16_Pt6= pi_f/(pi_c*pi_b*pi_t);
                    M16= sqrt(2/(gamma_c-1)*((Pt16_Pt6*(1+(gamma_t-1)/2*M6^2)^(gamma_t/(gamma_t-1)))^((gamma_c-1)/gamma_c)-1));
                    alpha_value_prime= alpha_value/(1+f);
                    cp_6A=(cp_t+alpha_value_prime*cp_c)/(1+alpha_value_prime);
                    R_6A=(R_t+alpha_value_prime*R_c)/(1+alpha_value_prime);
                    gamma_6A=cp_6A/(cp_6A-R_6A);
                    Tt16_Tt6=T0*tau_r*tau_f/(T_t4*tau_t);
                    tau_M=(cp_t/cp_6A)*(1+alpha_value_prime*(cp_c/cp_t)*Tt16_Tt6)/(1+alpha_value_prime);
                    fi_6= (M6^2*(1+((gamma_t-1)/2)*M6^2))/(1+gamma_t*M6^2)^2;
                    fi_16= (M16^2*(1+((gamma_c-1)/2)*M16^2))/(1+gamma_c*M16^2)^2;
                    fi_sub1= (1/sqrt(fi_6))+alpha_value_prime*sqrt(R_c*gamma_t*Tt16_Tt6/(R_t*gamma_c*fi_16));
                    fi=((1+alpha_value_prime)/fi_sub1)^2*R_6A*gamma_t*tau_M/(R_t*gamma_6A);
                    M6A=sqrt(2*fi/(1-2*gamma_6A*fi+sqrt(1-2*(gamma_6A+1)*fi)));
                    A16_A6= (alpha_value_prime*sqrt(Tt16_Tt6)) / (M16/M6*sqrt((gamma_c*R_t*(1+((gamma_c-1)/2)*M16^2)) / (gamma_t*R_c*(1+((gamma_t-1)/2)*M6^2))));
                    MFP_6=(M6*sqrt(gamma_t/R_t)) / ((1+((gamma_t-1)/2)*M6^2)^((gamma_t+1)/(2*(gamma_t-1))));
                    MFP_6A=(M6A*sqrt(gamma_6A/R_6A)) / ((1+((gamma_6A-1)/2)*M6A^2)^((gamma_6A+1)/(2*(gamma_6A-1))));
                    pi_Mideal= ((1+alpha_value_prime)*sqrt(tau_M)/(1+A16_A6))*(MFP_6/MFP_6A);
                    pi_M=pi_Mmax*pi_Mideal;


                    %% Afterburner
                    selection_AB=app.AfterburnerSwitch.Value;

                    if strcmpi(selection_AB,"on") % ----- Afterburner ON -----
                        %% Afterburner Parameters
                        cp_AB = app.c_p_ABJkgcircKEditField.Value;        %afterburner pressure coefficient
                        gamma_AB = app.gamma_ABEditField.Value;         %specific heat ratio in afterburner
                        eta_AB = app.eta_ABEditField.Value;          %afterburner efficiency
                        pi_AB = app.pi_ABEditField.Value;           %afterburner pressure ratio
                        T_t7 = app.T_t7circKEditField.Value;            %afterburner exit temperature

                        %% Afterburner Section
                        R_AB= (gamma_AB-1)/gamma_AB*cp_AB;
                        R_9=R_AB;
                        gamma_9=gamma_AB;

                        tau_lambda_AB= (cp_AB*T_t7)/(cp_c*T0);
                        T_t6a= T_t4*tau_t*tau_M;
                        h_t6a=interp1(T_values,h_values(:,1),T_t6a);      % h_t6a at f=0 and T=T_t6

                        % Iteration With Interpolation
                        iter_AB=1;
                        error_AB=1;
                        max_iter_AB=3;
                        error_threshold_AB=1e-5;
                        f_AB=0.0338;
                        while (iter_AB<=max_iter_AB) && (error_AB>error_threshold_AB)
                            f_old_AB=f_AB;
                            first_interpolation_AB = arrayfun(@(row) interp1(f_values, h_values(row, :), f_AB, 'linear'), 1:length(T_values));
                            h_t7 = interp1(T_values, first_interpolation_AB, T_t7, 'linear');
                            f_AB=(1+f/(1+alpha_value))*(h_t7-h_t6a)/(eta_AB*h_PR-h_t7);
                            error_AB=abs(f_old_AB-f_AB);
                            iter_AB=iter_AB+1;
                        end
                        Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_M*pi_AB*pi_n;
                        T9_T0= (T_t7/T0)/(Pt9_P9^((gamma_9-1)/gamma_9));

                    elseif strcmpi(selection_AB,"off") % ----- Afterburner OFF -----
                        R_9=R_6A;
                        gamma_9=gamma_6A;
                        f_AB=0;
                        Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_M*pi_n;
                        T9_T0= (T_t4*tau_t*tau_M/T0)/(Pt9_P9^((gamma_9-1)/gamma_9));

                    end
                    M9=sqrt(2/(gamma_9-1)*(Pt9_P9^((gamma_9-1)/gamma_9)-1));
                    V9_a0=M9*sqrt(gamma_9*R_9*T9_T0/(gamma_c*R_c));
                    fo=f/(1+alpha_value)+f_AB;
                    F_m0=a0_speed*((1+fo)*V9_a0-M0+(1+fo)*R_9*T9_T0*(1-P0_P9)/(R_c*V9_a0*gamma_c));
                    S=fo/F_m0;
                    eta_propulsive= 2*V0*F_m0/(a0_speed^2*((1+fo)*V9_a0^2-M0^2));
                    eta_thermal= (a0_speed^2*((1+fo)*V9_a0^2-M0^2))/(2*fo*h_PR*1e3);
                    eta_overall=eta_propulsive*eta_thermal;
                    pi_c_num(end+1)=pi_c;
                    eta_ov(end+1)=eta_overall;
                end
                % 1 mach sayısı ve pi 2 to 5
                if app.AfterburnerSwitch.Value=="On"
                    mach_label= ['M = ' num2str(M0) ', AB= On'];
                    p= plot(app.UIAxes5,pi_c_num,eta_ov,"--",'DisplayName', mach_label);
                else
                    mach_label= ['M = ' num2str(M0) ', AB= Off'];
                    p= plot(app.UIAxes5,pi_c_num,eta_ov,"-",'DisplayName', mach_label);
                end
                
                p.MarkerFaceColor = p.Color;
                p.DataTipTemplate.DataTipRows(1).Label="\pi_{c} \Rightarrow";
                p.DataTipTemplate.DataTipRows(2).Label="\eta_{Ov.} \Rightarrow";
                p.DataTipTemplate.DataTipRows(3).Label="M_{0} \Rightarrow"+M0;
                if app.AfterburnerSwitch.Value=="On"
                    p.DataTipTemplate.DataTipRows(4).Label="Afterburner \Rightarrow On";
                else
                    p.DataTipTemplate.DataTipRows(4).Label="Afterburner \Rightarrow Off";
                end
                hold(app.UIAxes5, 'on');
                eta_ov=[];
                pi_c_num=[];
            end
            legend(app.UIAxes5, 'show');
        end

        % Button pushed function: ClearButton_5
        function ClearButton_5Pushed(app, event)
            cla(app.UIAxes5);
        end

        % Button pushed function: PlotButton_6
        function Plot6(app, event)
            alpha_numbers=[];
            pi_c_numbers=[];
            hold(app.UIAxes2_2, 'on');
            for M0=app.MachStart.Value:app.MachInterval.Value:app.MachEnd.Value
                for pi_c=app.pi_cStart.Value:app.pi_cInterval.Value:app.pi_cEnd.Value
                    %-------------------- INPUTS -----------------------------------
                    %% Air Inlet - Diffuser - Exhaust
                    pi_dmax = app.pi_d_maxEditField.Value;         % Diffuser max pressure ratio
                    T0 = app.T_0KcircEditField.Value;           % Temperature value at freestream
                    pi_n = app.pi_nEditField.Value;            % Nozzle pressure ratio
                    P0_P9 = app.P_0P_9EditField.Value;              % Inlet and nozzle pressure ratio
                    %% Compressor
                    cp_c = app.c_pcJkgcircKEditField.Value;         % Compressor pressure coefficient
                    gamma_c = app.gamma_cEditField.Value;          % Specific Heat Ratio in Compressor
                    e_c = app.e_cEditField.Value;             % Compressor polytropic efficiency
                    pi_f = app.pi_fEditField.Value;              % Fan pressure ratio
                    %% Burner
                    pi_b = app.pi_bEditField.Value;            % Burner pressure ratio
                    eta_b = app.eta_bEditField.Value;          % Burner efficiency
                    T_t4 = app.T_t4circKEditField.Value;         % Burner inlet temperature
                    h_PR = app.h_PRkJkgEditField.Value;         % h_PR
                    %% Turbine
                    cp_t = app.c_ptJkgcircKEditField.Value;         % Turbine pressure coefficient
                    e_t = app.e_tEditField.Value;             % Turbine polytropic effiency
                    gamma_t = app.gamma_tEditField.Value;          % Specific heat ratio in turbine
                    M6 = app.M_6EditField.Value;               % Turbine exit mach number
                    % Mixed
                    eta_m = app.eta_mEditField.Value;           % mixed efficieny
                    % --------------------------------------------------------------

                    %% Air Section
                    R_t=(gamma_t-1)/gamma_t*cp_t;
                    R_c=(gamma_c-1)/gamma_c*cp_c;
                    a0_speed= sqrt(gamma_c*R_c*T0);
                    V0= a0_speed*M0;

                    %% Ram Section
                    tau_r = 1 + (((gamma_c - 1) / 2) * M0^2);      % Ram temperature ratio
                    pi_r = tau_r^(gamma_c / (gamma_c - 1));         % Ram pressure ratio, isentropic relation

                    % eta_r calculation
                    if M0<=1
                        eta_r=1;
                    else
                        eta_r= 1-0.075*(M0-1)^1.35;
                    end

                    %% Diffuser Section
                    pi_d = pi_dmax* eta_r;      % Diffuser pressure ratio
                    tau_d=1;                    % Highly adiabatic

                    %% Compressor Section
                    tau_c= pi_c^((gamma_c -1)/(gamma_c*e_c));           % tau_c calculation
                    eta_c= (pi_c^((gamma_c-1)/gamma_c)-1)/(tau_c-1);    % eta_c calculation
                    T_t3= T0 * tau_r * tau_d * tau_c;                  % Total temperature at st3. calculation
                    tau_lambda= (cp_t*T_t4)/(cp_c*T0);                 % tau_lambda calculation

                    %% Burner Section
                    % Read the appendix table-D in Excel
                    data=readtable("appendix D.xlsx", "VariableNamingRule","preserve");
                    T_values= data{:,1};                                % T values in table
                    f_values= [0, 0.0169, 0.0338, 0.0507, 0.0676];      % f values in table
                    h_values= data{:,3:end};                            % h values in table

                    h_t3=interp1(T_values,h_values(:,1),T_t3);      % h_t3 at f=0 and T=T_t3

                    % Iteration With Interpolation
                    iter=1;
                    error=1e-3;
                    max_iter=6;
                    error_threshold=1e-6;
                    f=0.0338;
                    while (iter<=max_iter) && (error>error_threshold)
                        f_old=f;
                        first_interpolation = arrayfun(@(row) interp1(f_values, h_values(row, :), f, 'linear'), 1:length(T_values));
                        h_t4 = interp1(T_values, first_interpolation, T_t4, 'linear');
                        f=(h_t4-h_t3)/(eta_b*h_PR-h_t4);
                        error=abs(f_old-f);
                        iter=iter+1;
                    end
                    tau_b=T_t4/T_t3; % Burner temperature ratio
                    %% Mixed
                    pi_Mmax = app.pi_M_maxEditField.Value;         %ideal constant area mixer
                    %% Fan
                    e_f = app.e_fEditField.Value;             %fan polytropic efficiency

                    %% Fan Section
                    tau_f= pi_f^((gamma_c-1)/(gamma_c*e_f));            %isentropic relation
                    eta_f= (pi_f^((gamma_c-1)/gamma_c)-1)/(tau_f-1);    %fan efficiency

                    %% Fan Alpha Value
                    alpha_value= (eta_m*(1+f)*(tau_lambda/tau_r)*(1-(pi_f/(pi_c*pi_b))^((gamma_t-1)*e_t/gamma_t))-(tau_c-1))/(tau_f-1);   %bypass ratio
                    if alpha_value<0
                        alpha_value=0;
                    end
                    %% Turbine
                    tau_t= 1- (tau_r/((1+f)*eta_m*tau_lambda))*(tau_c-1+alpha_value*(tau_f-1));     %
                    pi_t= tau_t^(gamma_t/((gamma_t-1)*e_t));                                        %
                    eta_t= (1-tau_t)/(1-tau_t^(1/e_t));
                    R_t=(gamma_t-1)/gamma_t*cp_t;

                    %% Other Calculation
                    Pt16_Pt6= pi_f/(pi_c*pi_b*pi_t);
                    M16= sqrt(2/(gamma_c-1)*((Pt16_Pt6*(1+(gamma_t-1)/2*M6^2)^(gamma_t/(gamma_t-1)))^((gamma_c-1)/gamma_c)-1));
                    alpha_value_prime= alpha_value/(1+f);
                    cp_6A=(cp_t+alpha_value_prime*cp_c)/(1+alpha_value_prime);
                    R_6A=(R_t+alpha_value_prime*R_c)/(1+alpha_value_prime);
                    gamma_6A=cp_6A/(cp_6A-R_6A);
                    Tt16_Tt6=T0*tau_r*tau_f/(T_t4*tau_t);
                    tau_M=(cp_t/cp_6A)*(1+alpha_value_prime*(cp_c/cp_t)*Tt16_Tt6)/(1+alpha_value_prime);
                    fi_6= (M6^2*(1+((gamma_t-1)/2)*M6^2))/(1+gamma_t*M6^2)^2;
                    fi_16= (M16^2*(1+((gamma_c-1)/2)*M16^2))/(1+gamma_c*M16^2)^2;
                    fi_sub1= (1/sqrt(fi_6))+alpha_value_prime*sqrt(R_c*gamma_t*Tt16_Tt6/(R_t*gamma_c*fi_16));
                    fi=((1+alpha_value_prime)/fi_sub1)^2*R_6A*gamma_t*tau_M/(R_t*gamma_6A);
                    M6A=sqrt(2*fi/(1-2*gamma_6A*fi+sqrt(1-2*(gamma_6A+1)*fi)));
                    A16_A6= (alpha_value_prime*sqrt(Tt16_Tt6)) / (M16/M6*sqrt((gamma_c*R_t*(1+((gamma_c-1)/2)*M16^2)) / (gamma_t*R_c*(1+((gamma_t-1)/2)*M6^2))));
                    MFP_6=(M6*sqrt(gamma_t/R_t)) / ((1+((gamma_t-1)/2)*M6^2)^((gamma_t+1)/(2*(gamma_t-1))));
                    MFP_6A=(M6A*sqrt(gamma_6A/R_6A)) / ((1+((gamma_6A-1)/2)*M6A^2)^((gamma_6A+1)/(2*(gamma_6A-1))));
                    pi_Mideal= ((1+alpha_value_prime)*sqrt(tau_M)/(1+A16_A6))*(MFP_6/MFP_6A);
                    pi_M=pi_Mmax*pi_Mideal;


                    %% Afterburner
                    selection_AB=app.AfterburnerSwitch.Value;

                    if strcmpi(selection_AB,"on") % ----- Afterburner ON -----
                        %% Afterburner Parameters
                        cp_AB = app.c_p_ABJkgcircKEditField.Value;        %afterburner pressure coefficient
                        gamma_AB = app.gamma_ABEditField.Value;         %specific heat ratio in afterburner
                        eta_AB = app.eta_ABEditField.Value;          %afterburner efficiency
                        pi_AB = app.pi_ABEditField.Value;           %afterburner pressure ratio
                        T_t7 = app.T_t7circKEditField.Value;            %afterburner exit temperature

                        %% Afterburner Section
                        R_AB= (gamma_AB-1)/gamma_AB*cp_AB;
                        R_9=R_AB;
                        gamma_9=gamma_AB;

                        tau_lambda_AB= (cp_AB*T_t7)/(cp_c*T0);
                        T_t6a= T_t4*tau_t*tau_M;
                        h_t6a=interp1(T_values,h_values(:,1),T_t6a);      % h_t6a at f=0 and T=T_t6

                        % Iteration With Interpolation
                        iter_AB=1;
                        error_AB=1;
                        max_iter_AB=3;
                        error_threshold_AB=1e-5;
                        f_AB=0.0338;
                        while (iter_AB<=max_iter_AB) && (error_AB>error_threshold_AB)
                            f_old_AB=f_AB;
                            first_interpolation_AB = arrayfun(@(row) interp1(f_values, h_values(row, :), f_AB, 'linear'), 1:length(T_values));
                            h_t7 = interp1(T_values, first_interpolation_AB, T_t7, 'linear');
                            f_AB=(1+f/(1+alpha_value))*(h_t7-h_t6a)/(eta_AB*h_PR-h_t7);
                            error_AB=abs(f_old_AB-f_AB);
                            iter_AB=iter_AB+1;
                        end
                        Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_M*pi_AB*pi_n;
                        T9_T0= (T_t7/T0)/(Pt9_P9^((gamma_9-1)/gamma_9));

                    elseif strcmpi(selection_AB,"off") % ----- Afterburner OFF -----
                        R_9=R_6A;
                        gamma_9=gamma_6A;
                        f_AB=0;
                        Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_M*pi_n;
                        T9_T0= (T_t4*tau_t*tau_M/T0)/(Pt9_P9^((gamma_9-1)/gamma_9));

                    end
                    M9=sqrt(2/(gamma_9-1)*(Pt9_P9^((gamma_9-1)/gamma_9)-1));
                    V9_a0=M9*sqrt(gamma_9*R_9*T9_T0/(gamma_c*R_c));
                    fo=f/(1+alpha_value)+f_AB;
                    F_m0=a0_speed*((1+fo)*V9_a0-M0+(1+fo)*R_9*T9_T0*(1-P0_P9)/(R_c*V9_a0*gamma_c));
                    S=fo/F_m0;
                    eta_propulsive= 2*V0*F_m0/(a0_speed^2*((1+fo)*V9_a0^2-M0^2));
                    eta_thermal= (a0_speed^2*((1+fo)*V9_a0^2-M0^2))/(2*fo*h_PR*1e3);
                    eta_overall=eta_propulsive*eta_thermal;
                    alpha_numbers(end+1)=alpha_value;
                    pi_c_numbers(end+1)=pi_c;
                end
                % 1 mach sayısı ve pi 2 to 5
                if app.AfterburnerSwitch.Value=="On"
                    mach_label= ['M = ' num2str(M0) ', AB= On'];
                    p= plot(app.UIAxes2_2,pi_c_numbers,alpha_numbers,"--", 'DisplayName', mach_label);
                else
                    mach_label= ['M = ' num2str(M0) ', AB= Off'];
                    p= plot(app.UIAxes2_2,pi_c_numbers,alpha_numbers,"-", 'DisplayName', mach_label);
                end

                
                p.MarkerFaceColor = p.Color;
                p.DataTipTemplate.DataTipRows(1).Label="\pi_{c} \Rightarrow";
                p.DataTipTemplate.DataTipRows(2).Label="\alpha \Rightarrow";
                p.DataTipTemplate.DataTipRows(3).Label="M_{0} \Rightarrow"+num2str(M0);
                hold(app.UIAxes2_2, 'on');

                alpha_numbers=[];
                pi_c_numbers=[];
            end
            legend(app.UIAxes2_2, 'show');
        end

        % Button pushed function: ClearButton_6
        function ClearButton_6Pushed(app, event)
            cla(app.UIAxes2_2);
        end

        % Button pushed function: PlotButton_7
        function Plot7(app, event)
            pi_c_numbers=[];
            tau_t_numbers=[];
            hold(app.UIAxes2_3, 'on');
            for M0=app.MachStart.Value:app.MachInterval.Value:app.MachEnd.Value
                for pi_c=app.pi_cStart.Value:app.pi_cInterval.Value:app.pi_cEnd.Value
                    %-------------------- INPUTS -----------------------------------
                    %% Air Inlet - Diffuser - Exhaust
                    pi_dmax = app.pi_d_maxEditField.Value;         % Diffuser max pressure ratio
                    T0 = app.T_0KcircEditField.Value;           % Temperature value at freestream
                    pi_n = app.pi_nEditField.Value;            % Nozzle pressure ratio
                    P0_P9 = app.P_0P_9EditField.Value;              % Inlet and nozzle pressure ratio
                    %% Compressor
                    cp_c = app.c_pcJkgcircKEditField.Value;         % Compressor pressure coefficient
                    gamma_c = app.gamma_cEditField.Value;          % Specific Heat Ratio in Compressor
                    e_c = app.e_cEditField.Value;             % Compressor polytropic efficiency
                    pi_f = app.pi_fEditField.Value;              % Fan pressure ratio
                    %% Burner
                    pi_b = app.pi_bEditField.Value;            % Burner pressure ratio
                    eta_b = app.eta_bEditField.Value;          % Burner efficiency
                    T_t4 = app.T_t4circKEditField.Value;         % Burner inlet temperature
                    h_PR = app.h_PRkJkgEditField.Value;         % h_PR
                    %% Turbine
                    cp_t = app.c_ptJkgcircKEditField.Value;         % Turbine pressure coefficient
                    e_t = app.e_tEditField.Value;             % Turbine polytropic effiency
                    gamma_t = app.gamma_tEditField.Value;          % Specific heat ratio in turbine
                    M6 = app.M_6EditField.Value;               % Turbine exit mach number
                    % Mixed
                    eta_m = app.eta_mEditField.Value;           % mixed efficieny
                    % --------------------------------------------------------------

                    %% Air Section
                    R_t=(gamma_t-1)/gamma_t*cp_t;
                    R_c=(gamma_c-1)/gamma_c*cp_c;
                    a0_speed= sqrt(gamma_c*R_c*T0);
                    V0= a0_speed*M0;

                    %% Ram Section
                    tau_r = 1 + (((gamma_c - 1) / 2) * M0^2);      % Ram temperature ratio
                    pi_r = tau_r^(gamma_c / (gamma_c - 1));         % Ram pressure ratio, isentropic relation

                    % eta_r calculation
                    if M0<=1
                        eta_r=1;
                    else
                        eta_r= 1-0.075*(M0-1)^1.35;
                    end

                    %% Diffuser Section
                    pi_d = pi_dmax* eta_r;      % Diffuser pressure ratio
                    tau_d=1;                    % Highly adiabatic

                    %% Compressor Section
                    tau_c= pi_c^((gamma_c -1)/(gamma_c*e_c));           % tau_c calculation
                    eta_c= (pi_c^((gamma_c-1)/gamma_c)-1)/(tau_c-1);    % eta_c calculation
                    T_t3= T0 * tau_r * tau_d * tau_c;                  % Total temperature at st3. calculation
                    tau_lambda= (cp_t*T_t4)/(cp_c*T0);                 % tau_lambda calculation

                    %% Burner Section
                    % Read the appendix table-D in Excel
                    data=readtable("appendix D.xlsx", "VariableNamingRule","preserve");
                    T_values= data{:,1};                                % T values in table
                    f_values= [0, 0.0169, 0.0338, 0.0507, 0.0676];      % f values in table
                    h_values= data{:,3:end};                            % h values in table

                    h_t3=interp1(T_values,h_values(:,1),T_t3);      % h_t3 at f=0 and T=T_t3

                    % Iteration With Interpolation
                    iter=1;
                    error=1e-3;
                    max_iter=6;
                    error_threshold=1e-6;
                    f=0.0338;
                    while (iter<=max_iter) && (error>error_threshold)
                        f_old=f;
                        first_interpolation = arrayfun(@(row) interp1(f_values, h_values(row, :), f, 'linear'), 1:length(T_values));
                        h_t4 = interp1(T_values, first_interpolation, T_t4, 'linear');
                        f=(h_t4-h_t3)/(eta_b*h_PR-h_t4);
                        error=abs(f_old-f);
                        iter=iter+1;
                    end
                    tau_b=T_t4/T_t3; % Burner temperature ratio
                    %% Mixed
                    pi_Mmax = app.pi_M_maxEditField.Value;         %ideal constant area mixer
                    %% Fan
                    e_f = app.e_fEditField.Value;             %fan polytropic efficiency

                    %% Fan Section
                    tau_f= pi_f^((gamma_c-1)/(gamma_c*e_f));            %isentropic relation
                    eta_f= (pi_f^((gamma_c-1)/gamma_c)-1)/(tau_f-1);    %fan efficiency

                    %% Fan Alpha Value
                    alpha_value= (eta_m*(1+f)*(tau_lambda/tau_r)*(1-(pi_f/(pi_c*pi_b))^((gamma_t-1)*e_t/gamma_t))-(tau_c-1))/(tau_f-1);   %bypass ratio
                    if alpha_value<0
                        alpha_value=0;
                    end
                    %% Turbine
                    tau_t= 1- (tau_r/((1+f)*eta_m*tau_lambda))*(tau_c-1+alpha_value*(tau_f-1));     %
                    pi_t= tau_t^(gamma_t/((gamma_t-1)*e_t));                                        %
                    eta_t= (1-tau_t)/(1-tau_t^(1/e_t));
                    R_t=(gamma_t-1)/gamma_t*cp_t;

                    %% Other Calculation
                    Pt16_Pt6= pi_f/(pi_c*pi_b*pi_t);
                    M16= sqrt(2/(gamma_c-1)*((Pt16_Pt6*(1+(gamma_t-1)/2*M6^2)^(gamma_t/(gamma_t-1)))^((gamma_c-1)/gamma_c)-1));
                    alpha_value_prime= alpha_value/(1+f);
                    cp_6A=(cp_t+alpha_value_prime*cp_c)/(1+alpha_value_prime);
                    R_6A=(R_t+alpha_value_prime*R_c)/(1+alpha_value_prime);
                    gamma_6A=cp_6A/(cp_6A-R_6A);
                    Tt16_Tt6=T0*tau_r*tau_f/(T_t4*tau_t);
                    tau_M=(cp_t/cp_6A)*(1+alpha_value_prime*(cp_c/cp_t)*Tt16_Tt6)/(1+alpha_value_prime);
                    fi_6= (M6^2*(1+((gamma_t-1)/2)*M6^2))/(1+gamma_t*M6^2)^2;
                    fi_16= (M16^2*(1+((gamma_c-1)/2)*M16^2))/(1+gamma_c*M16^2)^2;
                    fi_sub1= (1/sqrt(fi_6))+alpha_value_prime*sqrt(R_c*gamma_t*Tt16_Tt6/(R_t*gamma_c*fi_16));
                    fi=((1+alpha_value_prime)/fi_sub1)^2*R_6A*gamma_t*tau_M/(R_t*gamma_6A);
                    M6A=sqrt(2*fi/(1-2*gamma_6A*fi+sqrt(1-2*(gamma_6A+1)*fi)));
                    A16_A6= (alpha_value_prime*sqrt(Tt16_Tt6)) / (M16/M6*sqrt((gamma_c*R_t*(1+((gamma_c-1)/2)*M16^2)) / (gamma_t*R_c*(1+((gamma_t-1)/2)*M6^2))));
                    MFP_6=(M6*sqrt(gamma_t/R_t)) / ((1+((gamma_t-1)/2)*M6^2)^((gamma_t+1)/(2*(gamma_t-1))));
                    MFP_6A=(M6A*sqrt(gamma_6A/R_6A)) / ((1+((gamma_6A-1)/2)*M6A^2)^((gamma_6A+1)/(2*(gamma_6A-1))));
                    pi_Mideal= ((1+alpha_value_prime)*sqrt(tau_M)/(1+A16_A6))*(MFP_6/MFP_6A);
                    pi_M=pi_Mmax*pi_Mideal;


                    %% Afterburner
                    selection_AB=app.AfterburnerSwitch.Value;

                    if strcmpi(selection_AB,"on") % ----- Afterburner ON -----
                        %% Afterburner Parameters
                        cp_AB = app.c_p_ABJkgcircKEditField.Value;        %afterburner pressure coefficient
                        gamma_AB = app.gamma_ABEditField.Value;         %specific heat ratio in afterburner
                        eta_AB = app.eta_ABEditField.Value;          %afterburner efficiency
                        pi_AB = app.pi_ABEditField.Value;           %afterburner pressure ratio
                        T_t7 = app.T_t7circKEditField.Value;            %afterburner exit temperature

                        %% Afterburner Section
                        R_AB= (gamma_AB-1)/gamma_AB*cp_AB;
                        R_9=R_AB;
                        gamma_9=gamma_AB;

                        tau_lambda_AB= (cp_AB*T_t7)/(cp_c*T0);
                        T_t6a= T_t4*tau_t*tau_M;
                        h_t6a=interp1(T_values,h_values(:,1),T_t6a);      % h_t6a at f=0 and T=T_t6

                        % Iteration With Interpolation
                        iter_AB=1;
                        error_AB=1;
                        max_iter_AB=3;
                        error_threshold_AB=1e-5;
                        f_AB=0.0338;
                        while (iter_AB<=max_iter_AB) && (error_AB>error_threshold_AB)
                            f_old_AB=f_AB;
                            first_interpolation_AB = arrayfun(@(row) interp1(f_values, h_values(row, :), f_AB, 'linear'), 1:length(T_values));
                            h_t7 = interp1(T_values, first_interpolation_AB, T_t7, 'linear');
                            f_AB=(1+f/(1+alpha_value))*(h_t7-h_t6a)/(eta_AB*h_PR-h_t7);
                            error_AB=abs(f_old_AB-f_AB);
                            iter_AB=iter_AB+1;
                        end
                        Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_M*pi_AB*pi_n;
                        T9_T0= (T_t7/T0)/(Pt9_P9^((gamma_9-1)/gamma_9));

                    elseif strcmpi(selection_AB,"off") % ----- Afterburner OFF -----
                        R_9=R_6A;
                        gamma_9=gamma_6A;
                        f_AB=0;
                        Pt9_P9=P0_P9*pi_r*pi_d*pi_c*pi_b*pi_t*pi_M*pi_n;
                        T9_T0= (T_t4*tau_t*tau_M/T0)/(Pt9_P9^((gamma_9-1)/gamma_9));

                    end
                    M9=sqrt(2/(gamma_9-1)*(Pt9_P9^((gamma_9-1)/gamma_9)-1));
                    V9_a0=M9*sqrt(gamma_9*R_9*T9_T0/(gamma_c*R_c));
                    fo=f/(1+alpha_value)+f_AB;
                    F_m0=a0_speed*((1+fo)*V9_a0-M0+(1+fo)*R_9*T9_T0*(1-P0_P9)/(R_c*V9_a0*gamma_c));
                    S=fo/F_m0;
                    eta_propulsive= 2*V0*F_m0/(a0_speed^2*((1+fo)*V9_a0^2-M0^2));
                    eta_thermal= (a0_speed^2*((1+fo)*V9_a0^2-M0^2))/(2*fo*h_PR*1e3);
                    eta_overall=eta_propulsive*eta_thermal;
                    pi_c_numbers(end+1)=pi_c;
                    tau_t_numbers(end+1)=tau_t;
                end
                % 1 mach sayısı ve pi 2 to 5
                if app.AfterburnerSwitch.Value=="On"
                    mach_label= ['M = ' num2str(M0) ', AB= On'];
                    p= plot(app.UIAxes2_3,pi_c_numbers,tau_t_numbers,"--", 'DisplayName', mach_label);
                else
                    mach_label= ['M = ' num2str(M0) ', AB= Off'];
                    p= plot(app.UIAxes2_3,pi_c_numbers,tau_t_numbers,"-", 'DisplayName', mach_label);
                end

                
                p.MarkerFaceColor = p.Color;
                p.DataTipTemplate.DataTipRows(1).Label="\pi_{c} \Rightarrow";
                p.DataTipTemplate.DataTipRows(2).Label="\tau_{t} \Rightarrow";
                p.DataTipTemplate.DataTipRows(3).Label="M_{0} \Rightarrow"+num2str(M0);
                hold(app.UIAxes2_3, 'on');

                pi_c_numbers=[];
                tau_t_numbers=[];
            end
            legend(app.UIAxes2_3, 'show');
        end

        % Button pushed function: ClearButton_7
        function ClearButton_7Pushed(app, event)
            cla(app.UIAxes2_3);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 1200 748];
            app.UIFigure.Name = 'MATLAB App';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 1 1200 748];

            % Create ParametersTab
            app.ParametersTab = uitab(app.TabGroup);
            app.ParametersTab.Title = 'Parameters';

            % Create Image_AfterBurner
            app.Image_AfterBurner = uiimage(app.ParametersTab);
            app.Image_AfterBurner.Enable = 'off';
            app.Image_AfterBurner.Tooltip = {'Turns the afterburner on or off'};
            app.Image_AfterBurner.Position = [144 622 93 90];
            app.Image_AfterBurner.ImageSource = fullfile(pathToMLAPP, 'flames-icon.png');

            % Create AfterburnerSwitchLabel
            app.AfterburnerSwitchLabel = uilabel(app.ParametersTab);
            app.AfterburnerSwitchLabel.HorizontalAlignment = 'center';
            app.AfterburnerSwitchLabel.FontName = 'Goudy Old Style';
            app.AfterburnerSwitchLabel.FontSize = 18;
            app.AfterburnerSwitchLabel.FontWeight = 'bold';
            app.AfterburnerSwitchLabel.Tooltip = {'Turns the afterburner on or off'};
            app.AfterburnerSwitchLabel.Position = [143 594 94 24];
            app.AfterburnerSwitchLabel.Text = 'Afterburner';

            % Create AfterburnerSwitch
            app.AfterburnerSwitch = uiswitch(app.ParametersTab, 'slider');
            app.AfterburnerSwitch.ValueChangedFcn = createCallbackFcn(app, @AfterburnerSwitchValueChanged, true);
            app.AfterburnerSwitch.Tooltip = {'Turns the afterburner On or Off'};
            app.AfterburnerSwitch.FontSize = 14;
            app.AfterburnerSwitch.Position = [154 556 71 32];

            % Create AfterburnerPanel
            app.AfterburnerPanel = uipanel(app.ParametersTab);
            app.AfterburnerPanel.TitlePosition = 'centertop';
            app.AfterburnerPanel.Title = 'Afterburner';
            app.AfterburnerPanel.Visible = 'off';
            app.AfterburnerPanel.FontName = 'Goudy Old Style';
            app.AfterburnerPanel.FontAngle = 'italic';
            app.AfterburnerPanel.FontWeight = 'bold';
            app.AfterburnerPanel.FontSize = 22;
            app.AfterburnerPanel.Position = [402 80 466 140];

            % Create c_pABJkgcircKLabel
            app.c_pABJkgcircKLabel = uilabel(app.AfterburnerPanel);
            app.c_pABJkgcircKLabel.HorizontalAlignment = 'right';
            app.c_pABJkgcircKLabel.FontSize = 18;
            app.c_pABJkgcircKLabel.Interpreter = 'latex';
            app.c_pABJkgcircKLabel.Position = [20 62 117 30];
            app.c_pABJkgcircKLabel.Text = '$c_{p_{AB}}\,(J/kg.^\circ K)$';

            % Create c_p_ABJkgcircKEditField
            app.c_p_ABJkgcircKEditField = uieditfield(app.AfterburnerPanel, 'numeric');
            app.c_p_ABJkgcircKEditField.FontSize = 14;
            app.c_p_ABJkgcircKEditField.Tooltip = {'Specific heat at constant pressure for afterburner'};
            app.c_p_ABJkgcircKEditField.Position = [147 66 60 22];

            % Create T_t7circKEditFieldLabel
            app.T_t7circKEditFieldLabel = uilabel(app.AfterburnerPanel);
            app.T_t7circKEditFieldLabel.HorizontalAlignment = 'right';
            app.T_t7circKEditFieldLabel.FontSize = 18;
            app.T_t7circKEditFieldLabel.Interpreter = 'latex';
            app.T_t7circKEditFieldLabel.Position = [63 20 78 29];
            app.T_t7circKEditFieldLabel.Text = '$T_{t7}\,(^\circ K)$';

            % Create T_t7circKEditField
            app.T_t7circKEditField = uieditfield(app.AfterburnerPanel, 'numeric');
            app.T_t7circKEditField.FontSize = 14;
            app.T_t7circKEditField.Tooltip = {'Total temperature at afterburner exit in Kelvin'};
            app.T_t7circKEditField.Position = [147 23 60 22];

            % Create gamma_ABLabel
            app.gamma_ABLabel = uilabel(app.AfterburnerPanel);
            app.gamma_ABLabel.HorizontalAlignment = 'right';
            app.gamma_ABLabel.FontSize = 18;
            app.gamma_ABLabel.Interpreter = 'latex';
            app.gamma_ABLabel.Position = [240 64 36 27];
            app.gamma_ABLabel.Text = '$\gamma_{AB}$';

            % Create gamma_ABEditField
            app.gamma_ABEditField = uieditfield(app.AfterburnerPanel, 'numeric');
            app.gamma_ABEditField.FontSize = 14;
            app.gamma_ABEditField.Tooltip = {'Specific heat ratio for afterburner'};
            app.gamma_ABEditField.Position = [282 66 60 22];

            % Create eta_ABEditFieldLabel
            app.eta_ABEditFieldLabel = uilabel(app.AfterburnerPanel);
            app.eta_ABEditFieldLabel.HorizontalAlignment = 'right';
            app.eta_ABEditFieldLabel.FontSize = 18;
            app.eta_ABEditFieldLabel.Interpreter = 'latex';
            app.eta_ABEditFieldLabel.Position = [239 21 37 27];
            app.eta_ABEditFieldLabel.Text = '$\eta_{AB}$';

            % Create eta_ABEditField
            app.eta_ABEditField = uieditfield(app.AfterburnerPanel, 'numeric');
            app.eta_ABEditField.FontSize = 14;
            app.eta_ABEditField.Tooltip = {'Afterburner efficiency'};
            app.eta_ABEditField.Position = [282 23 60 22];

            % Create pi_ABEditFieldLabel
            app.pi_ABEditFieldLabel = uilabel(app.AfterburnerPanel);
            app.pi_ABEditFieldLabel.HorizontalAlignment = 'right';
            app.pi_ABEditFieldLabel.FontSize = 18;
            app.pi_ABEditFieldLabel.Interpreter = 'latex';
            app.pi_ABEditFieldLabel.Position = [354 64 38 27];
            app.pi_ABEditFieldLabel.Text = '$\pi_{AB}$';

            % Create pi_ABEditField
            app.pi_ABEditField = uieditfield(app.AfterburnerPanel, 'numeric');
            app.pi_ABEditField.FontSize = 14;
            app.pi_ABEditField.Tooltip = {'Afterburner pressure ratio'};
            app.pi_ABEditField.Position = [398 66 60 22];

            % Create CompressorPanel
            app.CompressorPanel = uipanel(app.ParametersTab);
            app.CompressorPanel.TitlePosition = 'centertop';
            app.CompressorPanel.Title = 'Compressor';
            app.CompressorPanel.FontName = 'Goudy Old Style';
            app.CompressorPanel.FontAngle = 'italic';
            app.CompressorPanel.FontWeight = 'bold';
            app.CompressorPanel.FontSize = 22;
            app.CompressorPanel.Position = [65 233 317 140];

            % Create c_pcJkgcircKEditFieldLabel
            app.c_pcJkgcircKEditFieldLabel = uilabel(app.CompressorPanel);
            app.c_pcJkgcircKEditFieldLabel.HorizontalAlignment = 'right';
            app.c_pcJkgcircKEditFieldLabel.FontSize = 18;
            app.c_pcJkgcircKEditFieldLabel.Interpreter = 'latex';
            app.c_pcJkgcircKEditFieldLabel.Position = [10 66 128 29];
            app.c_pcJkgcircKEditFieldLabel.Text = '$c_{pc}\,(J/kg.^\circ K)$';

            % Create c_pcJkgcircKEditField
            app.c_pcJkgcircKEditField = uieditfield(app.CompressorPanel, 'numeric');
            app.c_pcJkgcircKEditField.FontSize = 14;
            app.c_pcJkgcircKEditField.Tooltip = {'Specific heat at constant pressure for compressor'};
            app.c_pcJkgcircKEditField.Position = [142 69 60 22];

            % Create gamma_cEditFieldLabel
            app.gamma_cEditFieldLabel = uilabel(app.CompressorPanel);
            app.gamma_cEditFieldLabel.HorizontalAlignment = 'right';
            app.gamma_cEditFieldLabel.FontSize = 18;
            app.gamma_cEditFieldLabel.Interpreter = 'latex';
            app.gamma_cEditFieldLabel.Position = [112 22 25 27];
            app.gamma_cEditFieldLabel.Text = '$\gamma_c$';

            % Create gamma_cEditField
            app.gamma_cEditField = uieditfield(app.CompressorPanel, 'numeric');
            app.gamma_cEditField.FontSize = 14;
            app.gamma_cEditField.Tooltip = {'Specific heat ratio for compressor'};
            app.gamma_cEditField.Position = [141 24 60 22];

            % Create e_cEditFieldLabel
            app.e_cEditFieldLabel = uilabel(app.CompressorPanel);
            app.e_cEditFieldLabel.HorizontalAlignment = 'right';
            app.e_cEditFieldLabel.FontSize = 18;
            app.e_cEditFieldLabel.Interpreter = 'latex';
            app.e_cEditFieldLabel.Position = [219 68 25 27];
            app.e_cEditFieldLabel.Text = '$e_c$';

            % Create e_cEditField
            app.e_cEditField = uieditfield(app.CompressorPanel, 'numeric');
            app.e_cEditField.FontSize = 14;
            app.e_cEditField.Tooltip = {'Compressor efficiency'};
            app.e_cEditField.Position = [248 71 60 22];

            % Create pi_cEditFieldLabel
            app.pi_cEditFieldLabel = uilabel(app.CompressorPanel);
            app.pi_cEditFieldLabel.HorizontalAlignment = 'right';
            app.pi_cEditFieldLabel.FontSize = 18;
            app.pi_cEditFieldLabel.Interpreter = 'latex';
            app.pi_cEditFieldLabel.Position = [219 22 25 27];
            app.pi_cEditFieldLabel.Text = '$\pi_c$';

            % Create pi_cEditField
            app.pi_cEditField = uieditfield(app.CompressorPanel, 'numeric');
            app.pi_cEditField.FontSize = 14;
            app.pi_cEditField.Tooltip = {'Compressor pressure ratio'};
            app.pi_cEditField.Position = [248 24 60 22];

            % Create TurbinePanel
            app.TurbinePanel = uipanel(app.ParametersTab);
            app.TurbinePanel.TitlePosition = 'centertop';
            app.TurbinePanel.Title = 'Turbine';
            app.TurbinePanel.FontName = 'Goudy Old Style';
            app.TurbinePanel.FontAngle = 'italic';
            app.TurbinePanel.FontWeight = 'bold';
            app.TurbinePanel.FontSize = 22;
            app.TurbinePanel.Position = [65 80 317 140];

            % Create gamma_tEditFieldLabel
            app.gamma_tEditFieldLabel = uilabel(app.TurbinePanel);
            app.gamma_tEditFieldLabel.HorizontalAlignment = 'right';
            app.gamma_tEditFieldLabel.FontSize = 18;
            app.gamma_tEditFieldLabel.Interpreter = 'latex';
            app.gamma_tEditFieldLabel.Position = [219 21 25 27];
            app.gamma_tEditFieldLabel.Text = '$\gamma_t$';

            % Create gamma_tEditField
            app.gamma_tEditField = uieditfield(app.TurbinePanel, 'numeric');
            app.gamma_tEditField.FontSize = 14;
            app.gamma_tEditField.Tooltip = {'Specific heat ratio for turbine'};
            app.gamma_tEditField.Position = [248 23 60 22];

            % Create e_tEditFieldLabel
            app.e_tEditFieldLabel = uilabel(app.TurbinePanel);
            app.e_tEditFieldLabel.HorizontalAlignment = 'right';
            app.e_tEditFieldLabel.FontSize = 18;
            app.e_tEditFieldLabel.Interpreter = 'latex';
            app.e_tEditFieldLabel.Position = [219 64 25 27];
            app.e_tEditFieldLabel.Text = '$e_t$';

            % Create e_tEditField
            app.e_tEditField = uieditfield(app.TurbinePanel, 'numeric');
            app.e_tEditField.FontSize = 14;
            app.e_tEditField.Tooltip = {'Turbine efficiency'};
            app.e_tEditField.Position = [248 66 60 22];

            % Create c_ptJkgcircKEditFieldLabel
            app.c_ptJkgcircKEditFieldLabel = uilabel(app.TurbinePanel);
            app.c_ptJkgcircKEditFieldLabel.HorizontalAlignment = 'right';
            app.c_ptJkgcircKEditFieldLabel.FontSize = 18;
            app.c_ptJkgcircKEditFieldLabel.Interpreter = 'latex';
            app.c_ptJkgcircKEditFieldLabel.Position = [5 63 132 29];
            app.c_ptJkgcircKEditFieldLabel.Text = '$c_{pt}\,(J/kg.^\circ K)$';

            % Create c_ptJkgcircKEditField
            app.c_ptJkgcircKEditField = uieditfield(app.TurbinePanel, 'numeric');
            app.c_ptJkgcircKEditField.FontSize = 14;
            app.c_ptJkgcircKEditField.Tooltip = {'Specific heat at constant pressure for turbine'};
            app.c_ptJkgcircKEditField.Position = [141 66 60 22];

            % Create eta_mEditFieldLabel
            app.eta_mEditFieldLabel = uilabel(app.TurbinePanel);
            app.eta_mEditFieldLabel.HorizontalAlignment = 'right';
            app.eta_mEditFieldLabel.FontSize = 18;
            app.eta_mEditFieldLabel.Interpreter = 'latex';
            app.eta_mEditFieldLabel.Position = [121 21 29 27];
            app.eta_mEditFieldLabel.Text = '$\eta_m$';

            % Create eta_mEditField
            app.eta_mEditField = uieditfield(app.TurbinePanel, 'numeric');
            app.eta_mEditField.FontSize = 14;
            app.eta_mEditField.Tooltip = {'Mechanical efficiency'};
            app.eta_mEditField.Position = [154 23 60 22];

            % Create FanPanel
            app.FanPanel = uipanel(app.ParametersTab);
            app.FanPanel.TitlePosition = 'centertop';
            app.FanPanel.Title = 'Fan';
            app.FanPanel.Visible = 'off';
            app.FanPanel.FontName = 'Goudy Old Style';
            app.FanPanel.FontAngle = 'italic';
            app.FanPanel.FontWeight = 'bold';
            app.FanPanel.FontSize = 22;
            app.FanPanel.Position = [722 390 145 140];

            % Create e_fEditFieldLabel
            app.e_fEditFieldLabel = uilabel(app.FanPanel);
            app.e_fEditFieldLabel.HorizontalAlignment = 'right';
            app.e_fEditFieldLabel.FontSize = 18;
            app.e_fEditFieldLabel.Interpreter = 'latex';
            app.e_fEditFieldLabel.Position = [26 61 27 27];
            app.e_fEditFieldLabel.Text = '$e_f$';

            % Create e_fEditField
            app.e_fEditField = uieditfield(app.FanPanel, 'numeric');
            app.e_fEditField.FontSize = 14;
            app.e_fEditField.Tooltip = {'Fan efficiency'};
            app.e_fEditField.Position = [57 63 60 22];

            % Create pi_fEditFieldLabel
            app.pi_fEditFieldLabel = uilabel(app.FanPanel);
            app.pi_fEditFieldLabel.HorizontalAlignment = 'right';
            app.pi_fEditFieldLabel.FontSize = 18;
            app.pi_fEditFieldLabel.Interpreter = 'latex';
            app.pi_fEditFieldLabel.Position = [24 17 29 27];
            app.pi_fEditFieldLabel.Text = '$\pi_f$';

            % Create pi_fEditField
            app.pi_fEditField = uieditfield(app.FanPanel, 'numeric');
            app.pi_fEditField.FontSize = 14;
            app.pi_fEditField.Tooltip = {'Fan pressure ratio'};
            app.pi_fEditField.Position = [57 19 60 22];

            % Create BurnerPanel
            app.BurnerPanel = uipanel(app.ParametersTab);
            app.BurnerPanel.TitlePosition = 'centertop';
            app.BurnerPanel.Title = 'Burner';
            app.BurnerPanel.FontName = 'Goudy Old Style';
            app.BurnerPanel.FontAngle = 'italic';
            app.BurnerPanel.FontWeight = 'bold';
            app.BurnerPanel.FontSize = 22;
            app.BurnerPanel.Position = [402 233 465 140];

            % Create T_t4circKEditFieldLabel
            app.T_t4circKEditFieldLabel = uilabel(app.BurnerPanel);
            app.T_t4circKEditFieldLabel.HorizontalAlignment = 'right';
            app.T_t4circKEditFieldLabel.FontSize = 18;
            app.T_t4circKEditFieldLabel.Interpreter = 'latex';
            app.T_t4circKEditFieldLabel.Position = [268 66 69 29];
            app.T_t4circKEditFieldLabel.Text = '$T_{t4}\,(^\circ K)$';

            % Create T_t4circKEditField
            app.T_t4circKEditField = uieditfield(app.BurnerPanel, 'numeric');
            app.T_t4circKEditField.FontSize = 14;
            app.T_t4circKEditField.Tooltip = {'Burner exit total temperature in Kelvin'};
            app.T_t4circKEditField.Position = [343 69 60 22];

            % Create eta_bEditFieldLabel
            app.eta_bEditFieldLabel = uilabel(app.BurnerPanel);
            app.eta_bEditFieldLabel.HorizontalAlignment = 'right';
            app.eta_bEditFieldLabel.FontSize = 18;
            app.eta_bEditFieldLabel.Interpreter = 'latex';
            app.eta_bEditFieldLabel.Position = [62 22 25 27];
            app.eta_bEditFieldLabel.Text = '$\eta_{b}$';

            % Create eta_bEditField
            app.eta_bEditField = uieditfield(app.BurnerPanel, 'numeric');
            app.eta_bEditField.FontSize = 14;
            app.eta_bEditField.Tooltip = {'Burner efficiency'};
            app.eta_bEditField.Position = [93 24 60 22];

            % Create pi_bEditFieldLabel
            app.pi_bEditFieldLabel = uilabel(app.BurnerPanel);
            app.pi_bEditFieldLabel.HorizontalAlignment = 'right';
            app.pi_bEditFieldLabel.FontSize = 18;
            app.pi_bEditFieldLabel.Interpreter = 'latex';
            app.pi_bEditFieldLabel.Position = [61 68 26 27];
            app.pi_bEditFieldLabel.Text = '$\pi_{b}$';

            % Create pi_bEditField
            app.pi_bEditField = uieditfield(app.BurnerPanel, 'numeric');
            app.pi_bEditField.FontSize = 14;
            app.pi_bEditField.Tooltip = {'Burner pressure ratio'};
            app.pi_bEditField.Position = [93 70 60 22];

            % Create h_PRkJkgEditFieldLabel
            app.h_PRkJkgEditFieldLabel = uilabel(app.BurnerPanel);
            app.h_PRkJkgEditFieldLabel.HorizontalAlignment = 'right';
            app.h_PRkJkgEditFieldLabel.FontSize = 18;
            app.h_PRkJkgEditFieldLabel.Interpreter = 'latex';
            app.h_PRkJkgEditFieldLabel.Position = [199 21 140 27];
            app.h_PRkJkgEditFieldLabel.Text = '$h_{PR}\,(kJ/kg)$';

            % Create h_PRkJkgEditField
            app.h_PRkJkgEditField = uieditfield(app.BurnerPanel, 'numeric');
            app.h_PRkJkgEditField.FontSize = 14;
            app.h_PRkJkgEditField.Tooltip = {'Heating value of the fuel in kilojoules per kilogram'};
            app.h_PRkJkgEditField.Position = [343 23 60 22];

            % Create AirInletDiffuserExhaustPanel
            app.AirInletDiffuserExhaustPanel = uipanel(app.ParametersTab);
            app.AirInletDiffuserExhaustPanel.TitlePosition = 'centertop';
            app.AirInletDiffuserExhaustPanel.Title = 'Air Inlet - Diffuser - Exhaust';
            app.AirInletDiffuserExhaustPanel.FontName = 'Goudy Old Style';
            app.AirInletDiffuserExhaustPanel.FontAngle = 'italic';
            app.AirInletDiffuserExhaustPanel.FontWeight = 'bold';
            app.AirInletDiffuserExhaustPanel.FontSize = 22;
            app.AirInletDiffuserExhaustPanel.Position = [65 390 425 140];

            % Create pi_d_maxLabel
            app.pi_d_maxLabel = uilabel(app.AirInletDiffuserExhaustPanel);
            app.pi_d_maxLabel.HorizontalAlignment = 'right';
            app.pi_d_maxLabel.FontSize = 18;
            app.pi_d_maxLabel.Interpreter = 'latex';
            app.pi_d_maxLabel.Position = [15 62 43 28];
            app.pi_d_maxLabel.Text = '$\pi_{{d_{max}}$';

            % Create pi_d_maxEditField
            app.pi_d_maxEditField = uieditfield(app.AirInletDiffuserExhaustPanel, 'numeric');
            app.pi_d_maxEditField.FontSize = 14;
            app.pi_d_maxEditField.Tooltip = {'Maximum pressure ratio of diffuser'};
            app.pi_d_maxEditField.Position = [65 65 60 22];

            % Create pi_nEditFieldLabel
            app.pi_nEditFieldLabel = uilabel(app.AirInletDiffuserExhaustPanel);
            app.pi_nEditFieldLabel.HorizontalAlignment = 'right';
            app.pi_nEditFieldLabel.FontSize = 18;
            app.pi_nEditFieldLabel.Interpreter = 'latex';
            app.pi_nEditFieldLabel.Position = [35 17 26 27];
            app.pi_nEditFieldLabel.Text = '$\pi_n$';

            % Create pi_nEditField
            app.pi_nEditField = uieditfield(app.AirInletDiffuserExhaustPanel, 'numeric');
            app.pi_nEditField.FontSize = 14;
            app.pi_nEditField.Tooltip = {'Nozzle pressure ratio'};
            app.pi_nEditField.Position = [65 19 60 22];

            % Create M_0EditFieldLabel
            app.M_0EditFieldLabel = uilabel(app.AirInletDiffuserExhaustPanel);
            app.M_0EditFieldLabel.HorizontalAlignment = 'right';
            app.M_0EditFieldLabel.FontSize = 18;
            app.M_0EditFieldLabel.Interpreter = 'latex';
            app.M_0EditFieldLabel.Position = [150 63 33 27];
            app.M_0EditFieldLabel.Text = '$M_0$';

            % Create M_0EditField
            app.M_0EditField = uieditfield(app.AirInletDiffuserExhaustPanel, 'numeric');
            app.M_0EditField.FontSize = 14;
            app.M_0EditField.Tooltip = {'Mach number of free stream air'};
            app.M_0EditField.Position = [190 65 60 22];

            % Create P_0P_9Label
            app.P_0P_9Label = uilabel(app.AirInletDiffuserExhaustPanel);
            app.P_0P_9Label.HorizontalAlignment = 'right';
            app.P_0P_9Label.FontSize = 18;
            app.P_0P_9Label.Interpreter = 'latex';
            app.P_0P_9Label.Position = [131 17 57 27];
            app.P_0P_9Label.Text = '$P_0\,/P_9$';

            % Create P_0P_9EditField
            app.P_0P_9EditField = uieditfield(app.AirInletDiffuserExhaustPanel, 'numeric');
            app.P_0P_9EditField.FontSize = 14;
            app.P_0P_9EditField.Tooltip = {'Pressure ratio between free stream and exhaust'};
            app.P_0P_9EditField.Position = [190 19 60 22];

            % Create T_0KcircEditFieldLabel
            app.T_0KcircEditFieldLabel = uilabel(app.AirInletDiffuserExhaustPanel);
            app.T_0KcircEditFieldLabel.HorizontalAlignment = 'right';
            app.T_0KcircEditFieldLabel.FontSize = 18;
            app.T_0KcircEditFieldLabel.Interpreter = 'latex';
            app.T_0KcircEditFieldLabel.Position = [257 62 67 29];
            app.T_0KcircEditFieldLabel.Text = '$T_0\,(K^\circ)$';

            % Create T_0KcircEditField
            app.T_0KcircEditField = uieditfield(app.AirInletDiffuserExhaustPanel, 'numeric');
            app.T_0KcircEditField.FontSize = 14;
            app.T_0KcircEditField.Tooltip = {'Free stream total temperature in Kelvin'};
            app.T_0KcircEditField.Position = [330 65 60 22];

            % Create MixedPanel
            app.MixedPanel = uipanel(app.ParametersTab);
            app.MixedPanel.TitlePosition = 'centertop';
            app.MixedPanel.Title = 'Mixed';
            app.MixedPanel.Visible = 'off';
            app.MixedPanel.FontName = 'Goudy Old Style';
            app.MixedPanel.FontAngle = 'italic';
            app.MixedPanel.FontWeight = 'bold';
            app.MixedPanel.FontSize = 22;
            app.MixedPanel.Position = [531 390 145 140];

            % Create pi_M_maxEditFieldLabel
            app.pi_M_maxEditFieldLabel = uilabel(app.MixedPanel);
            app.pi_M_maxEditFieldLabel.HorizontalAlignment = 'right';
            app.pi_M_maxEditFieldLabel.FontSize = 18;
            app.pi_M_maxEditFieldLabel.Interpreter = 'latex';
            app.pi_M_maxEditFieldLabel.Position = [14 60 47 28];
            app.pi_M_maxEditFieldLabel.Text = '$\pi_{M_{max}}$';

            % Create pi_M_maxEditField
            app.pi_M_maxEditField = uieditfield(app.MixedPanel, 'numeric');
            app.pi_M_maxEditField.FontSize = 14;
            app.pi_M_maxEditField.Tooltip = {'Maximum mixer pressure ratio'};
            app.pi_M_maxEditField.Position = [65 63 60 22];

            % Create M_6EditFieldLabel
            app.M_6EditFieldLabel = uilabel(app.MixedPanel);
            app.M_6EditFieldLabel.HorizontalAlignment = 'right';
            app.M_6EditFieldLabel.FontSize = 18;
            app.M_6EditFieldLabel.Interpreter = 'latex';
            app.M_6EditFieldLabel.Position = [28 18 33 27];
            app.M_6EditFieldLabel.Text = '$M_6$';

            % Create M_6EditField
            app.M_6EditField = uieditfield(app.MixedPanel, 'numeric');
            app.M_6EditField.FontSize = 14;
            app.M_6EditField.Tooltip = {'Mach number at turbine exit'};
            app.M_6EditField.Position = [65 20 60 22];

            % Create ENGINETYPESELECTIONButtonGroup
            app.ENGINETYPESELECTIONButtonGroup = uibuttongroup(app.ParametersTab);
            app.ENGINETYPESELECTIONButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @ENGINETYPESELECTIONButtonGroupSelectionChanged, true);
            app.ENGINETYPESELECTIONButtonGroup.TitlePosition = 'centertop';
            app.ENGINETYPESELECTIONButtonGroup.Title = 'ENGINE TYPE SELECTION';
            app.ENGINETYPESELECTIONButtonGroup.BackgroundColor = [0.902 0.902 0.902];
            app.ENGINETYPESELECTIONButtonGroup.FontName = 'Goudy Old Style';
            app.ENGINETYPESELECTIONButtonGroup.FontAngle = 'italic';
            app.ENGINETYPESELECTIONButtonGroup.FontWeight = 'bold';
            app.ENGINETYPESELECTIONButtonGroup.FontSize = 24;
            app.ENGINETYPESELECTIONButtonGroup.Position = [371 546 650 170];

            % Create TURBOFANButton
            app.TURBOFANButton = uiradiobutton(app.ENGINETYPESELECTIONButtonGroup);
            app.TURBOFANButton.Text = 'TURBOFAN';
            app.TURBOFANButton.Position = [497 7 87 22];

            % Create MIXEDButton
            app.MIXEDButton = uiradiobutton(app.ENGINETYPESELECTIONButtonGroup);
            app.MIXEDButton.Text = 'MIXED';
            app.MIXEDButton.Position = [290 7 65 22];

            % Create TURBOJETButton
            app.TURBOJETButton = uiradiobutton(app.ENGINETYPESELECTIONButtonGroup);
            app.TURBOJETButton.Text = 'TURBOJET';
            app.TURBOJETButton.Position = [62 7 85 22];
            app.TURBOJETButton.Value = true;

            % Create Image_Jet
            app.Image_Jet = uiimage(app.ENGINETYPESELECTIONButtonGroup);
            app.Image_Jet.Position = [-1 25 210 100];
            app.Image_Jet.ImageSource = fullfile(pathToMLAPP, 'TurboJet.png');

            % Create Image_Fan
            app.Image_Fan = uiimage(app.ENGINETYPESELECTIONButtonGroup);
            app.Image_Fan.Enable = 'off';
            app.Image_Fan.Position = [435 25 210 100];
            app.Image_Fan.ImageSource = fullfile(pathToMLAPP, 'TurboFan.png');

            % Create Image_Mixed
            app.Image_Mixed = uiimage(app.ENGINETYPESELECTIONButtonGroup);
            app.Image_Mixed.Enable = 'off';
            app.Image_Mixed.Position = [272 21 100 100];
            app.Image_Mixed.ImageSource = fullfile(pathToMLAPP, 'Mixed.png');

            % Create CalculateButton
            app.CalculateButton = uibutton(app.ParametersTab, 'push');
            app.CalculateButton.ButtonPushedFcn = createCallbackFcn(app, @ParametersCalculateButton, true);
            app.CalculateButton.Icon = fullfile(pathToMLAPP, 'Calculator.svg');
            app.CalculateButton.IconAlignment = 'right';
            app.CalculateButton.FontSize = 18;
            app.CalculateButton.Position = [1013 17 146 33];
            app.CalculateButton.Text = 'Calculate';

            % Create DefaultValuesButton
            app.DefaultValuesButton = uibutton(app.ParametersTab, 'push');
            app.DefaultValuesButton.ButtonPushedFcn = createCallbackFcn(app, @DefaultValuesButtonPushed, true);
            app.DefaultValuesButton.FontName = 'Arial';
            app.DefaultValuesButton.Position = [65 17 100 23];
            app.DefaultValuesButton.Text = 'Default Values';

            % Create SeperatedTrubofanPanel
            app.SeperatedTrubofanPanel = uipanel(app.ParametersTab);
            app.SeperatedTrubofanPanel.TitlePosition = 'centertop';
            app.SeperatedTrubofanPanel.Title = 'Seperated Trubofan';
            app.SeperatedTrubofanPanel.Visible = 'off';
            app.SeperatedTrubofanPanel.FontName = 'Goudy Old Style';
            app.SeperatedTrubofanPanel.FontWeight = 'bold';
            app.SeperatedTrubofanPanel.FontSize = 22;
            app.SeperatedTrubofanPanel.Position = [898 349 260 181];

            % Create fracP_0P_19EditFieldLabel
            app.fracP_0P_19EditFieldLabel = uilabel(app.SeperatedTrubofanPanel);
            app.fracP_0P_19EditFieldLabel.HorizontalAlignment = 'right';
            app.fracP_0P_19EditFieldLabel.FontSize = 18;
            app.fracP_0P_19EditFieldLabel.Interpreter = 'latex';
            app.fracP_0P_19EditFieldLabel.Position = [61 85 35 51];
            app.fracP_0P_19EditFieldLabel.Text = '$\frac{P_0}{P_{19}}$';

            % Create fracP_0P_19EditField
            app.fracP_0P_19EditField = uieditfield(app.SeperatedTrubofanPanel, 'numeric');
            app.fracP_0P_19EditField.FontSize = 14;
            app.fracP_0P_19EditField.Tooltip = {'Pressure ratio between free stream and bypass exhaust'};
            app.fracP_0P_19EditField.Position = [111 99 100 22];

            % Create pi_fnEditFieldLabel
            app.pi_fnEditFieldLabel = uilabel(app.SeperatedTrubofanPanel);
            app.pi_fnEditFieldLabel.HorizontalAlignment = 'right';
            app.pi_fnEditFieldLabel.FontSize = 18;
            app.pi_fnEditFieldLabel.Interpreter = 'latex';
            app.pi_fnEditFieldLabel.Position = [63 47 33 26];
            app.pi_fnEditFieldLabel.Text = '$\pi_{fn}$';

            % Create pi_fnEditField
            app.pi_fnEditField = uieditfield(app.SeperatedTrubofanPanel, 'numeric');
            app.pi_fnEditField.FontSize = 14;
            app.pi_fnEditField.Position = [111 51 100 22];

            % Create alphaEditFieldLabel
            app.alphaEditFieldLabel = uilabel(app.SeperatedTrubofanPanel);
            app.alphaEditFieldLabel.HorizontalAlignment = 'right';
            app.alphaEditFieldLabel.FontSize = 18;
            app.alphaEditFieldLabel.Interpreter = 'latex';
            app.alphaEditFieldLabel.Position = [71 9 25 24];
            app.alphaEditFieldLabel.Text = '$\alpha$';

            % Create alphaEditField
            app.alphaEditField = uieditfield(app.SeperatedTrubofanPanel, 'numeric');
            app.alphaEditField.FontSize = 14;
            app.alphaEditField.Tooltip = {'Ratio of bypass airflow to core airflow (Bypass ratio)'};
            app.alphaEditField.Position = [111 11 100 22];

            % Create DuctburnerTurbofanPanel
            app.DuctburnerTurbofanPanel = uipanel(app.ParametersTab);
            app.DuctburnerTurbofanPanel.TitlePosition = 'centertop';
            app.DuctburnerTurbofanPanel.Title = 'Ductburner Turbofan';
            app.DuctburnerTurbofanPanel.Visible = 'off';
            app.DuctburnerTurbofanPanel.FontName = 'Goudy Old Style';
            app.DuctburnerTurbofanPanel.FontWeight = 'bold';
            app.DuctburnerTurbofanPanel.FontSize = 22;
            app.DuctburnerTurbofanPanel.Position = [898 80 260 257];

            % Create gamma_DBEditFieldLabel
            app.gamma_DBEditFieldLabel = uilabel(app.DuctburnerTurbofanPanel);
            app.gamma_DBEditFieldLabel.HorizontalAlignment = 'right';
            app.gamma_DBEditFieldLabel.FontSize = 18;
            app.gamma_DBEditFieldLabel.Interpreter = 'latex';
            app.gamma_DBEditFieldLabel.Position = [91 172 37 26];
            app.gamma_DBEditFieldLabel.Text = '$\gamma_{DB}$';

            % Create gamma_DBEditField
            app.gamma_DBEditField = uieditfield(app.DuctburnerTurbofanPanel, 'numeric');
            app.gamma_DBEditField.FontSize = 14;
            app.gamma_DBEditField.Tooltip = {'Specific heat ratio for duct burner'};
            app.gamma_DBEditField.Position = [143 176 100 22];

            % Create c_p_DBLabel
            app.c_p_DBLabel = uilabel(app.DuctburnerTurbofanPanel);
            app.c_p_DBLabel.HorizontalAlignment = 'right';
            app.c_p_DBLabel.FontSize = 18;
            app.c_p_DBLabel.Interpreter = 'latex';
            app.c_p_DBLabel.Position = [11 127 117 30];
            app.c_p_DBLabel.Text = '$c_{p_{DB}}\,(J/kg.^\circ K)$';

            % Create c_p_DBJkgcircKEditField
            app.c_p_DBJkgcircKEditField = uieditfield(app.DuctburnerTurbofanPanel, 'numeric');
            app.c_p_DBJkgcircKEditField.FontSize = 14;
            app.c_p_DBJkgcircKEditField.Tooltip = {'Specific heat at constant pressure for duct burner'};
            app.c_p_DBJkgcircKEditField.Position = [143 135 100 22];

            % Create pi_DBEditFieldLabel
            app.pi_DBEditFieldLabel = uilabel(app.DuctburnerTurbofanPanel);
            app.pi_DBEditFieldLabel.HorizontalAlignment = 'right';
            app.pi_DBEditFieldLabel.FontSize = 18;
            app.pi_DBEditFieldLabel.Interpreter = 'latex';
            app.pi_DBEditFieldLabel.Position = [90 91 38 26];
            app.pi_DBEditFieldLabel.Text = '$\pi_{DB}$';

            % Create pi_DBEditField
            app.pi_DBEditField = uieditfield(app.DuctburnerTurbofanPanel, 'numeric');
            app.pi_DBEditField.FontSize = 14;
            app.pi_DBEditField.Tooltip = {'Duct burner pressure ratio'};
            app.pi_DBEditField.Position = [143 95 100 22];

            % Create eta_DBEditFieldLabel
            app.eta_DBEditFieldLabel = uilabel(app.DuctburnerTurbofanPanel);
            app.eta_DBEditFieldLabel.HorizontalAlignment = 'right';
            app.eta_DBEditFieldLabel.FontSize = 18;
            app.eta_DBEditFieldLabel.Interpreter = 'latex';
            app.eta_DBEditFieldLabel.Position = [90 50 38 26];
            app.eta_DBEditFieldLabel.Text = '$\eta_{DB}$';

            % Create eta_DBEditField
            app.eta_DBEditField = uieditfield(app.DuctburnerTurbofanPanel, 'numeric');
            app.eta_DBEditField.FontSize = 14;
            app.eta_DBEditField.Tooltip = {'Duct burner efficiency'};
            app.eta_DBEditField.Position = [143 54 100 22];

            % Create T_t17KEditFieldLabel
            app.T_t17KEditFieldLabel = uilabel(app.DuctburnerTurbofanPanel);
            app.T_t17KEditFieldLabel.HorizontalAlignment = 'right';
            app.T_t17KEditFieldLabel.FontSize = 18;
            app.T_t17KEditFieldLabel.Interpreter = 'latex';
            app.T_t17KEditFieldLabel.Position = [57 8 71 27];
            app.T_t17KEditFieldLabel.Text = '$T_{t17}\,(K)$';

            % Create T_t17KEditField
            app.T_t17KEditField = uieditfield(app.DuctburnerTurbofanPanel, 'numeric');
            app.T_t17KEditField.FontSize = 14;
            app.T_t17KEditField.Tooltip = {'Total temperature at duct burner exit in Kelvin'};
            app.T_t17KEditField.Position = [143 11 100 22];

            % Create ParametricConclusionTab
            app.ParametricConclusionTab = uitab(app.TabGroup);
            app.ParametricConclusionTab.Title = 'Parametric Conclusion';

            % Create CONCLUSIONSPanel
            app.CONCLUSIONSPanel = uipanel(app.ParametricConclusionTab);
            app.CONCLUSIONSPanel.Title = 'CONCLUSIONS';
            app.CONCLUSIONSPanel.Position = [160 407 878 183];

            % Create tau_rLabel
            app.tau_rLabel = uilabel(app.CONCLUSIONSPanel);
            app.tau_rLabel.FontSize = 14;
            app.tau_rLabel.Tooltip = {'Ram temperature ratio'};
            app.tau_rLabel.Interpreter = 'latex';
            app.tau_rLabel.Position = [16 124 86 22];
            app.tau_rLabel.Text = '$\tau_r=$';

            % Create tau_cLabel
            app.tau_cLabel = uilabel(app.CONCLUSIONSPanel);
            app.tau_cLabel.FontSize = 14;
            app.tau_cLabel.Tooltip = {'Compressor temperature ratio'};
            app.tau_cLabel.Interpreter = 'latex';
            app.tau_cLabel.Position = [16 10 85 22];
            app.tau_cLabel.Text = '$\tau_c=$';

            % Create pi_dLabel
            app.pi_dLabel = uilabel(app.CONCLUSIONSPanel);
            app.pi_dLabel.FontSize = 14;
            app.pi_dLabel.Tooltip = {'Diffuser pressure ratio'};
            app.pi_dLabel.Interpreter = 'latex';
            app.pi_dLabel.Position = [199 44 97 22];
            app.pi_dLabel.Text = '$\pi_d=$';

            % Create tau_lambda_ABLabel
            app.tau_lambda_ABLabel = uilabel(app.CONCLUSIONSPanel);
            app.tau_lambda_ABLabel.FontSize = 14;
            app.tau_lambda_ABLabel.Interpreter = 'latex';
            app.tau_lambda_ABLabel.Position = [101 43 97 24];
            app.tau_lambda_ABLabel.Text = '$\tau_{\lambda_{AB}}=$';

            % Create f_ABLabel
            app.f_ABLabel = uilabel(app.CONCLUSIONSPanel);
            app.f_ABLabel.FontSize = 14;
            app.f_ABLabel.Tooltip = {'Fuel-to-air ratio for afterburner'};
            app.f_ABLabel.Interpreter = 'latex';
            app.f_ABLabel.Position = [499 124 108 22];
            app.f_ABLabel.Text = '$f_{AB}=$';

            % Create eta_PrLabel_3
            app.eta_PrLabel_3 = uilabel(app.CONCLUSIONSPanel);
            app.eta_PrLabel_3.FontSize = 14;
            app.eta_PrLabel_3.Tooltip = {'Propulsive efficiency'};
            app.eta_PrLabel_3.Interpreter = 'latex';
            app.eta_PrLabel_3.Position = [390 83 107 22];
            app.eta_PrLabel_3.Text = '$\eta_{Pr.}=$';

            % Create eta_tLabel
            app.eta_tLabel = uilabel(app.CONCLUSIONSPanel);
            app.eta_tLabel.FontSize = 14;
            app.eta_tLabel.Tooltip = {'Turbine efficiency'};
            app.eta_tLabel.Interpreter = 'latex';
            app.eta_tLabel.Position = [299 44 92 22];
            app.eta_tLabel.Text = '$\eta_t=$';

            % Create fracP_t9P_9Label
            app.fracP_t9P_9Label = uilabel(app.CONCLUSIONSPanel);
            app.fracP_t9P_9Label.Tooltip = {'Stagnation-to-static pressure ratio at nozzle exit'};
            app.fracP_t9P_9Label.Interpreter = 'latex';
            app.fracP_t9P_9Label.Position = [611 117 83 36];
            app.fracP_t9P_9Label.Text = '$\frac{P_{t9}}{P_9}=$';

            % Create fracT_9T_0Label
            app.fracT_9T_0Label = uilabel(app.CONCLUSIONSPanel);
            app.fracT_9T_0Label.Tooltip = {'Temperature ratio between nozzle exit and free stream'};
            app.fracT_9T_0Label.Interpreter = 'latex';
            app.fracT_9T_0Label.Position = [613 76 88 36];
            app.fracT_9T_0Label.Text = '$\frac{T_{9}}{T_0}=$';

            % Create f_DBLabel
            app.f_DBLabel = uilabel(app.CONCLUSIONSPanel);
            app.f_DBLabel.FontSize = 14;
            app.f_DBLabel.Tooltip = {'Fuel-to-air ratio for duct burner'};
            app.f_DBLabel.Interpreter = 'latex';
            app.f_DBLabel.Position = [498 83 103 22];
            app.f_DBLabel.Text = '$f_{DB}=$';

            % Create eta_OvLabel_3
            app.eta_OvLabel_3 = uilabel(app.CONCLUSIONSPanel);
            app.eta_OvLabel_3.FontSize = 14;
            app.eta_OvLabel_3.Tooltip = {'Overall efficiency'};
            app.eta_OvLabel_3.Interpreter = 'latex';
            app.eta_OvLabel_3.Position = [390 44 111 22];
            app.eta_OvLabel_3.Text = '$\eta_{Ov.}=$';

            % Create eta_fLabel
            app.eta_fLabel = uilabel(app.CONCLUSIONSPanel);
            app.eta_fLabel.FontSize = 14;
            app.eta_fLabel.Tooltip = {'Fan efficiency'};
            app.eta_fLabel.Interpreter = 'latex';
            app.eta_fLabel.Position = [297 10 94 22];
            app.eta_fLabel.Text = '$\eta_{f}=$';

            % Create pi_tLabel
            app.pi_tLabel = uilabel(app.CONCLUSIONSPanel);
            app.pi_tLabel.FontSize = 14;
            app.pi_tLabel.Tooltip = {'Turbine pressure ratio'};
            app.pi_tLabel.Interpreter = 'latex';
            app.pi_tLabel.Position = [200 10 96 22];
            app.pi_tLabel.Text = '$\pi_t=$';

            % Create tau_lambda_DBLabel
            app.tau_lambda_DBLabel = uilabel(app.CONCLUSIONSPanel);
            app.tau_lambda_DBLabel.FontSize = 14;
            app.tau_lambda_DBLabel.Interpreter = 'latex';
            app.tau_lambda_DBLabel.Position = [101 9 97 24];
            app.tau_lambda_DBLabel.Text = '$\tau_{\lambda_{DB}}=$';

            % Create tau_lambdaLabel
            app.tau_lambdaLabel = uilabel(app.CONCLUSIONSPanel);
            app.tau_lambdaLabel.FontSize = 14;
            app.tau_lambdaLabel.Interpreter = 'latex';
            app.tau_lambdaLabel.Position = [108 124 90 22];
            app.tau_lambdaLabel.Text = '$\tau_\lambda=$';

            % Create tau_dLabel
            app.tau_dLabel = uilabel(app.CONCLUSIONSPanel);
            app.tau_dLabel.FontSize = 14;
            app.tau_dLabel.Tooltip = {'Diffuser temperature ratio'};
            app.tau_dLabel.Interpreter = 'latex';
            app.tau_dLabel.Position = [16 83 86 22];
            app.tau_dLabel.Text = '$\tau_d=$';

            % Create M_9Label
            app.M_9Label = uilabel(app.CONCLUSIONSPanel);
            app.M_9Label.Tooltip = {'Mach number at nozzle exit'};
            app.M_9Label.Interpreter = 'latex';
            app.M_9Label.Position = [611 44 83 22];
            app.M_9Label.Text = '$M_9=$';

            % Create f_oLabel
            app.f_oLabel = uilabel(app.CONCLUSIONSPanel);
            app.f_oLabel.FontSize = 14;
            app.f_oLabel.Interpreter = 'latex';
            app.f_oLabel.Position = [503 44 98 22];
            app.f_oLabel.Text = '$f_o=$';

            % Create fLabel
            app.fLabel = uilabel(app.CONCLUSIONSPanel);
            app.fLabel.FontSize = 14;
            app.fLabel.Tooltip = {'Fuel-to-air ratio'};
            app.fLabel.Interpreter = 'latex';
            app.fLabel.Position = [396 10 102 22];
            app.fLabel.Text = '$f=$';

            % Create eta_ThLabel_3
            app.eta_ThLabel_3 = uilabel(app.CONCLUSIONSPanel);
            app.eta_ThLabel_3.FontSize = 14;
            app.eta_ThLabel_3.Tooltip = {'Thermal efficiency'};
            app.eta_ThLabel_3.Interpreter = 'latex';
            app.eta_ThLabel_3.Position = [390 124 107 22];
            app.eta_ThLabel_3.Text = '$\eta_{Th.}=$';

            % Create eta_cLabel
            app.eta_cLabel = uilabel(app.CONCLUSIONSPanel);
            app.eta_cLabel.FontSize = 14;
            app.eta_cLabel.Tooltip = {'Compressor efficiency'};
            app.eta_cLabel.Interpreter = 'latex';
            app.eta_cLabel.Position = [299 83 92 22];
            app.eta_cLabel.Text = '$\eta_c=$';

            % Create pi_rLabel
            app.pi_rLabel = uilabel(app.CONCLUSIONSPanel);
            app.pi_rLabel.FontSize = 14;
            app.pi_rLabel.Tooltip = {'Ram pressure ratio'};
            app.pi_rLabel.Interpreter = 'latex';
            app.pi_rLabel.Position = [199 83 98 22];
            app.pi_rLabel.Text = '$\pi_r=$';

            % Create tau_tLabel
            app.tau_tLabel = uilabel(app.CONCLUSIONSPanel);
            app.tau_tLabel.FontSize = 14;
            app.tau_tLabel.Tooltip = {'Turbine temperature ratio'};
            app.tau_tLabel.Interpreter = 'latex';
            app.tau_tLabel.Position = [109 83 91 22];
            app.tau_tLabel.Text = '$\tau_t=$';

            % Create tau_fLabel
            app.tau_fLabel = uilabel(app.CONCLUSIONSPanel);
            app.tau_fLabel.FontSize = 14;
            app.tau_fLabel.Tooltip = {'Fan temperature ratio'};
            app.tau_fLabel.Interpreter = 'latex';
            app.tau_fLabel.Position = [15 44 86 22];
            app.tau_fLabel.Text = '$\tau_f=$';

            % Create tau_MLabel
            app.tau_MLabel = uilabel(app.CONCLUSIONSPanel);
            app.tau_MLabel.FontSize = 14;
            app.tau_MLabel.Tooltip = {'Mixer temperature ratio'};
            app.tau_MLabel.Interpreter = 'latex';
            app.tau_MLabel.Position = [197 124 99 22];
            app.tau_MLabel.Text = '$\tau_M=$';

            % Create pi_MLabel
            app.pi_MLabel = uilabel(app.CONCLUSIONSPanel);
            app.pi_MLabel.FontSize = 14;
            app.pi_MLabel.Tooltip = {'Mixer pressure ratio'};
            app.pi_MLabel.Interpreter = 'latex';
            app.pi_MLabel.Position = [295 124 102 22];
            app.pi_MLabel.Text = '$\pi_M=$';

            % Create alphaLabel
            app.alphaLabel = uilabel(app.CONCLUSIONSPanel);
            app.alphaLabel.FontSize = 14;
            app.alphaLabel.Tooltip = {'Ratio of bypass airflow to core airflow (Bypass ratio)'};
            app.alphaLabel.Interpreter = 'latex';
            app.alphaLabel.Position = [504 10 97 22];
            app.alphaLabel.Text = '$\alpha=$';

            % Create fracP_t19P_19Label
            app.fracP_t19P_19Label = uilabel(app.CONCLUSIONSPanel);
            app.fracP_t19P_19Label.Tooltip = {'Stagnation-to-static pressure ratio at bypass nozzle exit'};
            app.fracP_t19P_19Label.Interpreter = 'latex';
            app.fracP_t19P_19Label.Position = [787 117 80 36];
            app.fracP_t19P_19Label.Text = '$\frac{P_{t19}}{P_{19}}=$';

            % Create fracT_19T_0Label
            app.fracT_19T_0Label = uilabel(app.CONCLUSIONSPanel);
            app.fracT_19T_0Label.Tooltip = {'Temperature ratio between bypass nozzle exit and free stream'};
            app.fracT_19T_0Label.Interpreter = 'latex';
            app.fracT_19T_0Label.Position = [789 76 78 36];
            app.fracT_19T_0Label.Text = '$\frac{T_{19}}{T_0}=$';

            % Create M_19Label
            app.M_19Label = uilabel(app.CONCLUSIONSPanel);
            app.M_19Label.Tooltip = {'Mach number at bypass nozzle exit'};
            app.M_19Label.Interpreter = 'latex';
            app.M_19Label.Position = [787 44 80 22];
            app.M_19Label.Text = '$M_{19}=$';

            % Create fracP_t16P_t6Label
            app.fracP_t16P_t6Label = uilabel(app.CONCLUSIONSPanel);
            app.fracP_t16P_t6Label.Tooltip = {'Total pressure ratio'};
            app.fracP_t16P_t6Label.Interpreter = 'latex';
            app.fracP_t16P_t6Label.Position = [700 117 81 36];
            app.fracP_t16P_t6Label.Text = '$\frac{P_{t16}}{P_{t6}}=$';

            % Create fracT_t16T_t6Label
            app.fracT_t16T_t6Label = uilabel(app.CONCLUSIONSPanel);
            app.fracT_t16T_t6Label.Tooltip = {'Total temperature ratio'};
            app.fracT_t16T_t6Label.Interpreter = 'latex';
            app.fracT_t16T_t6Label.Position = [701 76 78 36];
            app.fracT_t16T_t6Label.Text = '$\frac{T_{t16}}{T_{t6}}=$';

            % Create M_16Label
            app.M_16Label = uilabel(app.CONCLUSIONSPanel);
            app.M_16Label.Interpreter = 'latex';
            app.M_16Label.Position = [700 44 81 22];
            app.M_16Label.Text = '$M_{16}=$';

            % Create Panel_4
            app.Panel_4 = uipanel(app.ParametricConclusionTab);
            app.Panel_4.Position = [454 284 289 42];

            % Create fracFdotm_0Label_3
            app.fracFdotm_0Label_3 = uilabel(app.Panel_4);
            app.fracFdotm_0Label_3.Interpreter = 'latex';
            app.fracFdotm_0Label_3.Position = [2 2 155 37];
            app.fracFdotm_0Label_3.Text = '$\frac{F}{\dot{m}_0}=$';

            % Create SLabel
            app.SLabel = uilabel(app.Panel_4);
            app.SLabel.Interpreter = 'latex';
            app.SLabel.Position = [157 6 129 32];
            app.SLabel.Text = '$S=$';

            % Create GraphsTab
            app.GraphsTab = uitab(app.TabGroup);
            app.GraphsTab.Title = 'Graphs';

            % Create UIAxes
            app.UIAxes = uiaxes(app.GraphsTab);
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.TickLabelInterpreter = 'latex';
            app.UIAxes.Position = [41 514 300 185];

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.GraphsTab);
            zlabel(app.UIAxes2, 'Z')
            app.UIAxes2.TickLabelInterpreter = 'latex';
            app.UIAxes2.Position = [422 514 300 185];

            % Create UIAxes3
            app.UIAxes3 = uiaxes(app.GraphsTab);
            app.UIAxes3.TickLabelInterpreter = 'latex';
            app.UIAxes3.Position = [41 61 300 185];

            % Create UIAxes4
            app.UIAxes4 = uiaxes(app.GraphsTab);
            zlabel(app.UIAxes4, 'Z')
            app.UIAxes4.TickLabelInterpreter = 'latex';
            app.UIAxes4.Position = [423 61 300 185];

            % Create UIAxes5
            app.UIAxes5 = uiaxes(app.GraphsTab);
            zlabel(app.UIAxes5, 'Z')
            app.UIAxes5.TickLabelInterpreter = 'latex';
            app.UIAxes5.Position = [828 61 300 185];

            % Create UIAxes2_2
            app.UIAxes2_2 = uiaxes(app.GraphsTab);
            zlabel(app.UIAxes2_2, 'Z')
            app.UIAxes2_2.Position = [41 290 300 185];

            % Create UIAxes2_3
            app.UIAxes2_3 = uiaxes(app.GraphsTab);
            zlabel(app.UIAxes2_3, 'Z')
            app.UIAxes2_3.Position = [423 290 300 185];

            % Create PlotButton
            app.PlotButton = uibutton(app.GraphsTab, 'push');
            app.PlotButton.ButtonPushedFcn = createCallbackFcn(app, @Plot, true);
            app.PlotButton.Position = [111 484 75 23];
            app.PlotButton.Text = 'Plot';

            % Create Panel_2
            app.Panel_2 = uipanel(app.GraphsTab);
            app.Panel_2.BorderType = 'none';
            app.Panel_2.TitlePosition = 'centertop';
            app.Panel_2.Title = '------------------------------------------------------------------------------------------------';
            app.Panel_2.Position = [785 481 390 61];

            % Create toEditFieldLabel
            app.toEditFieldLabel = uilabel(app.Panel_2);
            app.toEditFieldLabel.HorizontalAlignment = 'center';
            app.toEditFieldLabel.Position = [168 3 25 22];
            app.toEditFieldLabel.Text = 'to';

            % Create MachEnd
            app.MachEnd = uieditfield(app.Panel_2, 'numeric');
            app.MachEnd.Position = [192 3 60 22];
            app.MachEnd.Value = 2;

            % Create M_0EditField_2Label
            app.M_0EditField_2Label = uilabel(app.Panel_2);
            app.M_0EditField_2Label.HorizontalAlignment = 'right';
            app.M_0EditField_2Label.Interpreter = 'latex';
            app.M_0EditField_2Label.Position = [64 3 25 22];
            app.M_0EditField_2Label.Text = '$M_0$';

            % Create MachStart
            app.MachStart = uieditfield(app.Panel_2, 'numeric');
            app.MachStart.Position = [104 3 60 22];
            app.MachStart.Value = 0.6;

            % Create intervalEditFieldLabel
            app.intervalEditFieldLabel = uilabel(app.Panel_2);
            app.intervalEditFieldLabel.HorizontalAlignment = 'right';
            app.intervalEditFieldLabel.Position = [270 3 44 22];
            app.intervalEditFieldLabel.Text = 'interval';

            % Create MachInterval
            app.MachInterval = uieditfield(app.Panel_2, 'numeric');
            app.MachInterval.Limits = [0 Inf];
            app.MachInterval.Position = [321 3 60 22];
            app.MachInterval.Value = 1.4;

            % Create GraphParametersLabel
            app.GraphParametersLabel = uilabel(app.Panel_2);
            app.GraphParametersLabel.FontSize = 14;
            app.GraphParametersLabel.Interpreter = 'latex';
            app.GraphParametersLabel.Position = [160 59 123 22];
            app.GraphParametersLabel.Text = 'Graph Parameters';

            % Create Panel_3
            app.Panel_3 = uipanel(app.GraphsTab);
            app.Panel_3.BorderType = 'none';
            app.Panel_3.TitlePosition = 'centertop';
            app.Panel_3.Title = '------------------------------------------------------------------------------------------------';
            app.Panel_3.Position = [785 411 390 61];

            % Create toEditField_2Label
            app.toEditField_2Label = uilabel(app.Panel_3);
            app.toEditField_2Label.HorizontalAlignment = 'center';
            app.toEditField_2Label.Position = [169 3 25 22];
            app.toEditField_2Label.Text = 'to';

            % Create pi_cEnd
            app.pi_cEnd = uieditfield(app.Panel_3, 'numeric');
            app.pi_cEnd.Position = [192 3 60 22];
            app.pi_cEnd.Value = 32;

            % Create pi_cLabel_5
            app.pi_cLabel_5 = uilabel(app.Panel_3);
            app.pi_cLabel_5.HorizontalAlignment = 'right';
            app.pi_cLabel_5.FontSize = 18;
            app.pi_cLabel_5.Interpreter = 'latex';
            app.pi_cLabel_5.Position = [60 1 29 26];
            app.pi_cLabel_5.Text = '$\pi_c$';

            % Create pi_cStart
            app.pi_cStart = uieditfield(app.Panel_3, 'numeric');
            app.pi_cStart.Position = [104 3 60 22];
            app.pi_cStart.Value = 16;

            % Create intervalEditField_2Label
            app.intervalEditField_2Label = uilabel(app.Panel_3);
            app.intervalEditField_2Label.HorizontalAlignment = 'right';
            app.intervalEditField_2Label.Position = [270 3 44 22];
            app.intervalEditField_2Label.Text = 'interval';

            % Create pi_cInterval
            app.pi_cInterval = uieditfield(app.Panel_3, 'numeric');
            app.pi_cInterval.Limits = [0 Inf];
            app.pi_cInterval.Position = [321 3 60 22];
            app.pi_cInterval.Value = 1;

            % Create Label
            app.Label = uilabel(app.GraphsTab);
            app.Label.FontName = 'Times New Roman';
            app.Label.FontSize = 10;
            app.Label.FontWeight = 'bold';
            app.Label.Position = [21 12 399 22];
            app.Label.Text = 'NOTE: Graphics are available for only mixed turbofan engine either afterburner on or off.';

            % Create pi_cLabel_6
            app.pi_cLabel_6 = uilabel(app.GraphsTab);
            app.pi_cLabel_6.FontSize = 18;
            app.pi_cLabel_6.Interpreter = 'latex';
            app.pi_cLabel_6.Position = [344 503 62 37];
            app.pi_cLabel_6.Text = '$\pi_{c}$';

            % Create Fdotm_0vspi_cLabel
            app.Fdotm_0vspi_cLabel = uilabel(app.GraphsTab);
            app.Fdotm_0vspi_cLabel.FontSize = 14;
            app.Fdotm_0vspi_cLabel.FontWeight = 'bold';
            app.Fdotm_0vspi_cLabel.FontAngle = 'italic';
            app.Fdotm_0vspi_cLabel.Interpreter = 'latex';
            app.Fdotm_0vspi_cLabel.Position = [164 689 80 23];
            app.Fdotm_0vspi_cLabel.Text = '$F/\dot{m}_0$ vs $\pi_c$ ';

            % Create fracFdotm_0Label_2
            app.fracFdotm_0Label_2 = uilabel(app.GraphsTab);
            app.fracFdotm_0Label_2.Interpreter = 'latex';
            app.fracFdotm_0Label_2.Position = [11 681 25 37];
            app.fracFdotm_0Label_2.Text = '$\frac{F}{\dot{m}_0}$';

            % Create ClearButton
            app.ClearButton = uibutton(app.GraphsTab, 'push');
            app.ClearButton.ButtonPushedFcn = createCallbackFcn(app, @ClearButtonPushed, true);
            app.ClearButton.Position = [218 484 75 23];
            app.ClearButton.Text = 'Clear';

            % Create PlotButton_2
            app.PlotButton_2 = uibutton(app.GraphsTab, 'push');
            app.PlotButton_2.ButtonPushedFcn = createCallbackFcn(app, @Plot2, true);
            app.PlotButton_2.Position = [502 484 75 23];
            app.PlotButton_2.Text = 'Plot';

            % Create ClearButton_2
            app.ClearButton_2 = uibutton(app.GraphsTab, 'push');
            app.ClearButton_2.ButtonPushedFcn = createCallbackFcn(app, @ClearButton_2Pushed, true);
            app.ClearButton_2.Position = [611 484 75 23];
            app.ClearButton_2.Text = 'Clear';

            % Create PlotButton_3
            app.PlotButton_3 = uibutton(app.GraphsTab, 'push');
            app.PlotButton_3.ButtonPushedFcn = createCallbackFcn(app, @Plot3, true);
            app.PlotButton_3.Position = [111 34 75 23];
            app.PlotButton_3.Text = 'Plot';

            % Create ClearButton_3
            app.ClearButton_3 = uibutton(app.GraphsTab, 'push');
            app.ClearButton_3.ButtonPushedFcn = createCallbackFcn(app, @ClearButton_3Pushed, true);
            app.ClearButton_3.Position = [218 34 75 23];
            app.ClearButton_3.Text = 'Clear';

            % Create PlotButton_4
            app.PlotButton_4 = uibutton(app.GraphsTab, 'push');
            app.PlotButton_4.ButtonPushedFcn = createCallbackFcn(app, @Plot4, true);
            app.PlotButton_4.Position = [502 34 75 23];
            app.PlotButton_4.Text = 'Plot';

            % Create ClearButton_4
            app.ClearButton_4 = uibutton(app.GraphsTab, 'push');
            app.ClearButton_4.ButtonPushedFcn = createCallbackFcn(app, @ClearButton_4Pushed, true);
            app.ClearButton_4.Position = [611 34 75 23];
            app.ClearButton_4.Text = 'Clear';

            % Create PlotButton_5
            app.PlotButton_5 = uibutton(app.GraphsTab, 'push');
            app.PlotButton_5.ButtonPushedFcn = createCallbackFcn(app, @Plot5, true);
            app.PlotButton_5.Position = [907 34 75 23];
            app.PlotButton_5.Text = 'Plot';

            % Create ClearButton_5
            app.ClearButton_5 = uibutton(app.GraphsTab, 'push');
            app.ClearButton_5.ButtonPushedFcn = createCallbackFcn(app, @ClearButton_5Pushed, true);
            app.ClearButton_5.Position = [1016 34 75 23];
            app.ClearButton_5.Text = 'Clear';

            % Create pi_cLabel_4
            app.pi_cLabel_4 = uilabel(app.GraphsTab);
            app.pi_cLabel_4.FontSize = 18;
            app.pi_cLabel_4.Interpreter = 'latex';
            app.pi_cLabel_4.Position = [726 514 29 26];
            app.pi_cLabel_4.Text = '$\pi_c$';

            % Create pi_cLabel
            app.pi_cLabel = uilabel(app.GraphsTab);
            app.pi_cLabel.FontSize = 18;
            app.pi_cLabel.Interpreter = 'latex';
            app.pi_cLabel.Position = [340 52 29 27];
            app.pi_cLabel.Text = '$\pi_c$';

            % Create pi_cLabel_2
            app.pi_cLabel_2 = uilabel(app.GraphsTab);
            app.pi_cLabel_2.FontSize = 18;
            app.pi_cLabel_2.Interpreter = 'latex';
            app.pi_cLabel_2.Position = [723 52 29 27];
            app.pi_cLabel_2.Text = '$\pi_c$';

            % Create eta_ThLabel_2
            app.eta_ThLabel_2 = uilabel(app.GraphsTab);
            app.eta_ThLabel_2.FontSize = 18;
            app.eta_ThLabel_2.Interpreter = 'latex';
            app.eta_ThLabel_2.Position = [11 238 37 27];
            app.eta_ThLabel_2.Text = '$\eta_{Th.}$';

            % Create eta_PrLabel_2
            app.eta_PrLabel_2 = uilabel(app.GraphsTab);
            app.eta_PrLabel_2.FontSize = 18;
            app.eta_PrLabel_2.Interpreter = 'latex';
            app.eta_PrLabel_2.Position = [399 238 37 27];
            app.eta_PrLabel_2.Text = '$\eta_{Pr.}$';

            % Create eta_OvLabel_2
            app.eta_OvLabel_2 = uilabel(app.GraphsTab);
            app.eta_OvLabel_2.FontSize = 18;
            app.eta_OvLabel_2.Interpreter = 'latex';
            app.eta_OvLabel_2.Position = [798 238 38 27];
            app.eta_OvLabel_2.Text = '$\eta_{Ov.}$';

            % Create pi_cLabel_3
            app.pi_cLabel_3 = uilabel(app.GraphsTab);
            app.pi_cLabel_3.FontSize = 18;
            app.pi_cLabel_3.Interpreter = 'latex';
            app.pi_cLabel_3.Position = [1130 52 29 27];
            app.pi_cLabel_3.Text = '$\pi_c$';

            % Create eta_Thvspi_cLabel
            app.eta_Thvspi_cLabel = uilabel(app.GraphsTab);
            app.eta_Thvspi_cLabel.FontSize = 14;
            app.eta_Thvspi_cLabel.Interpreter = 'latex';
            app.eta_Thvspi_cLabel.Position = [164 235 68 22];
            app.eta_Thvspi_cLabel.Text = '$\eta_{Th.}$ vs $\pi_c$';

            % Create Svspi_cLabel
            app.Svspi_cLabel = uilabel(app.GraphsTab);
            app.Svspi_cLabel.FontSize = 14;
            app.Svspi_cLabel.FontWeight = 'bold';
            app.Svspi_cLabel.FontAngle = 'italic';
            app.Svspi_cLabel.Interpreter = 'latex';
            app.Svspi_cLabel.Position = [560 689 72 23];
            app.Svspi_cLabel.Text = 'S vs $\pi_c$';

            % Create eta_Prvspi_cLabel
            app.eta_Prvspi_cLabel = uilabel(app.GraphsTab);
            app.eta_Prvspi_cLabel.FontSize = 14;
            app.eta_Prvspi_cLabel.FontWeight = 'bold';
            app.eta_Prvspi_cLabel.FontAngle = 'italic';
            app.eta_Prvspi_cLabel.Interpreter = 'latex';
            app.eta_Prvspi_cLabel.Position = [560 235 68 22];
            app.eta_Prvspi_cLabel.Text = '$\eta_{Pr.}$ vs $\pi_c$';

            % Create eta_Ovvspi_cLabel
            app.eta_Ovvspi_cLabel = uilabel(app.GraphsTab);
            app.eta_Ovvspi_cLabel.FontSize = 14;
            app.eta_Ovvspi_cLabel.FontWeight = 'bold';
            app.eta_Ovvspi_cLabel.FontAngle = 'italic';
            app.eta_Ovvspi_cLabel.Interpreter = 'latex';
            app.eta_Ovvspi_cLabel.Position = [964 235 69 22];
            app.eta_Ovvspi_cLabel.Text = '$\eta_{Ov.}$ vs $\pi_c$';

            % Create Label_2
            app.Label_2 = uilabel(app.GraphsTab);
            app.Label_2.FontName = 'Times New Roman';
            app.Label_2.FontSize = 10;
            app.Label_2.FontWeight = 'bold';
            app.Label_2.Position = [21 0 855 22];
            app.Label_2.Text = 'NOTE: For afterburner "off" graphics, please go to "Parameters" tab and change "Afterburner" switch off then press "Calculate" button. After that create new plot with pressing "Plot" button.';

            % Create PlotButton_6
            app.PlotButton_6 = uibutton(app.GraphsTab, 'push');
            app.PlotButton_6.ButtonPushedFcn = createCallbackFcn(app, @Plot6, true);
            app.PlotButton_6.Position = [111 260 75 23];
            app.PlotButton_6.Text = 'Plot';

            % Create ClearButton_6
            app.ClearButton_6 = uibutton(app.GraphsTab, 'push');
            app.ClearButton_6.ButtonPushedFcn = createCallbackFcn(app, @ClearButton_6Pushed, true);
            app.ClearButton_6.Position = [218 260 75 23];
            app.ClearButton_6.Text = 'Clear';

            % Create pi_cLabel_7
            app.pi_cLabel_7 = uilabel(app.GraphsTab);
            app.pi_cLabel_7.FontSize = 18;
            app.pi_cLabel_7.Interpreter = 'latex';
            app.pi_cLabel_7.Position = [345 290 29 26];
            app.pi_cLabel_7.Text = '$\pi_c$';

            % Create alphavspi_cLabel
            app.alphavspi_cLabel = uilabel(app.GraphsTab);
            app.alphavspi_cLabel.FontSize = 14;
            app.alphavspi_cLabel.FontWeight = 'bold';
            app.alphavspi_cLabel.FontAngle = 'italic';
            app.alphavspi_cLabel.Interpreter = 'latex';
            app.alphavspi_cLabel.Position = [164 462 72 23];
            app.alphavspi_cLabel.Text = '$\alpha$ vs $\pi_c$';

            % Create PlotButton_7
            app.PlotButton_7 = uibutton(app.GraphsTab, 'push');
            app.PlotButton_7.ButtonPushedFcn = createCallbackFcn(app, @Plot7, true);
            app.PlotButton_7.Position = [503 260 75 23];
            app.PlotButton_7.Text = 'Plot';

            % Create ClearButton_7
            app.ClearButton_7 = uibutton(app.GraphsTab, 'push');
            app.ClearButton_7.ButtonPushedFcn = createCallbackFcn(app, @ClearButton_7Pushed, true);
            app.ClearButton_7.Position = [612 260 75 23];
            app.ClearButton_7.Text = 'Clear';

            % Create pi_cLabel_8
            app.pi_cLabel_8 = uilabel(app.GraphsTab);
            app.pi_cLabel_8.FontSize = 18;
            app.pi_cLabel_8.Interpreter = 'latex';
            app.pi_cLabel_8.Position = [727 290 29 26];
            app.pi_cLabel_8.Text = '$\pi_c$';

            % Create tau_tvspi_cLabel
            app.tau_tvspi_cLabel = uilabel(app.GraphsTab);
            app.tau_tvspi_cLabel.FontSize = 14;
            app.tau_tvspi_cLabel.FontWeight = 'bold';
            app.tau_tvspi_cLabel.FontAngle = 'italic';
            app.tau_tvspi_cLabel.Interpreter = 'latex';
            app.tau_tvspi_cLabel.Position = [560 462 72 23];
            app.tau_tvspi_cLabel.Text = '$\tau_t$ vs $\pi_c$';

            % Create SLabel_2
            app.SLabel_2 = uilabel(app.GraphsTab);
            app.SLabel_2.FontSize = 18;
            app.SLabel_2.Interpreter = 'latex';
            app.SLabel_2.Position = [399 688 25 24];
            app.SLabel_2.Text = 'S';

            % Create alphaLabel_2
            app.alphaLabel_2 = uilabel(app.GraphsTab);
            app.alphaLabel_2.FontSize = 18;
            app.alphaLabel_2.Interpreter = 'latex';
            app.alphaLabel_2.Position = [11 462 25 24];
            app.alphaLabel_2.Text = '$\alpha$';

            % Create tau_tLabel_2
            app.tau_tLabel_2 = uilabel(app.GraphsTab);
            app.tau_tLabel_2.FontSize = 18;
            app.tau_tLabel_2.Interpreter = 'latex';
            app.tau_tLabel_2.Position = [399 461 25 26];
            app.tau_tLabel_2.Text = '$\tau_t$';

            % Create UnitConversionTab
            app.UnitConversionTab = uitab(app.TabGroup);
            app.UnitConversionTab.Title = 'Unit Conversion';

            % Create TemperaturePanel
            app.TemperaturePanel = uipanel(app.UnitConversionTab);
            app.TemperaturePanel.TitlePosition = 'centertop';
            app.TemperaturePanel.Title = 'Temperature';
            app.TemperaturePanel.FontWeight = 'bold';
            app.TemperaturePanel.FontSize = 18;
            app.TemperaturePanel.Position = [233 618 748 85];

            % Create ButtonGroup
            app.ButtonGroup = uibuttongroup(app.TemperaturePanel);
            app.ButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @TemperatureButtonSwitches, true);
            app.ButtonGroup.BorderType = 'none';
            app.ButtonGroup.Position = [1 1 736 30];

            % Create Button
            app.Button = uiradiobutton(app.ButtonGroup);
            app.Button.Text = '';
            app.Button.Position = [25 4 15 22];
            app.Button.Value = true;

            % Create Button_2
            app.Button_2 = uiradiobutton(app.ButtonGroup);
            app.Button_2.Text = '';
            app.Button_2.Position = [212 4 16 22];

            % Create Button_3
            app.Button_3 = uiradiobutton(app.ButtonGroup);
            app.Button_3.Text = '';
            app.Button_3.Position = [385 2 23 22];

            % Create Button_4
            app.Button_4 = uiradiobutton(app.ButtonGroup);
            app.Button_4.Text = '';
            app.Button_4.Position = [570 4 17 22];

            % Create CelsiusEditFieldLabel
            app.CelsiusEditFieldLabel = uilabel(app.TemperaturePanel);
            app.CelsiusEditFieldLabel.HorizontalAlignment = 'right';
            app.CelsiusEditFieldLabel.FontSize = 14;
            app.CelsiusEditFieldLabel.Position = [190 23 51 22];
            app.CelsiusEditFieldLabel.Text = 'Celsius';

            % Create CelsiusEditField
            app.CelsiusEditField = uieditfield(app.TemperaturePanel, 'numeric');
            app.CelsiusEditField.FontSize = 14;
            app.CelsiusEditField.Enable = 'off';
            app.CelsiusEditField.Position = [256 23 100 22];

            % Create RankineEditFieldLabel
            app.RankineEditFieldLabel = uilabel(app.TemperaturePanel);
            app.RankineEditFieldLabel.HorizontalAlignment = 'right';
            app.RankineEditFieldLabel.FontSize = 14;
            app.RankineEditFieldLabel.Position = [360 23 56 22];
            app.RankineEditFieldLabel.Text = 'Rankine';

            % Create RankineEditField
            app.RankineEditField = uieditfield(app.TemperaturePanel, 'numeric');
            app.RankineEditField.FontSize = 14;
            app.RankineEditField.Enable = 'off';
            app.RankineEditField.Position = [430 23 100 22];

            % Create FahrenheitEditFieldLabel
            app.FahrenheitEditFieldLabel = uilabel(app.TemperaturePanel);
            app.FahrenheitEditFieldLabel.HorizontalAlignment = 'right';
            app.FahrenheitEditFieldLabel.FontSize = 14;
            app.FahrenheitEditFieldLabel.Position = [539 23 72 22];
            app.FahrenheitEditFieldLabel.Text = 'Fahrenheit';

            % Create FahrenheitEditField
            app.FahrenheitEditField = uieditfield(app.TemperaturePanel, 'numeric');
            app.FahrenheitEditField.FontSize = 14;
            app.FahrenheitEditField.Enable = 'off';
            app.FahrenheitEditField.Position = [626 23 100 22];

            % Create KelvinEditFieldLabel
            app.KelvinEditFieldLabel = uilabel(app.TemperaturePanel);
            app.KelvinEditFieldLabel.HorizontalAlignment = 'right';
            app.KelvinEditFieldLabel.FontSize = 14;
            app.KelvinEditFieldLabel.Position = [9 23 43 22];
            app.KelvinEditFieldLabel.Text = 'Kelvin';

            % Create KelvinEditField
            app.KelvinEditField = uieditfield(app.TemperaturePanel, 'numeric');
            app.KelvinEditField.FontSize = 14;
            app.KelvinEditField.Position = [67 23 100 22];

            % Create ConvertButton
            app.ConvertButton = uibutton(app.UnitConversionTab, 'push');
            app.ConvertButton.ButtonPushedFcn = createCallbackFcn(app, @TemperatureCalculator, true);
            app.ConvertButton.Icon = fullfile(pathToMLAPP, 'Convert.svg');
            app.ConvertButton.IconAlignment = 'right';
            app.ConvertButton.FontSize = 14;
            app.ConvertButton.Position = [880 589 100 25];
            app.ConvertButton.Text = 'Convert';

            % Create KLabel
            app.KLabel = uilabel(app.UnitConversionTab);
            app.KLabel.HorizontalAlignment = 'right';
            app.KLabel.FontSize = 14;
            app.KLabel.Interpreter = 'latex';
            app.KLabel.Position = [647 592 35 22];
            app.KLabel.Text = '$(^\circ K)$';

            % Create Temp_ConcEditField
            app.Temp_ConcEditField = uieditfield(app.UnitConversionTab, 'numeric');
            app.Temp_ConcEditField.Editable = 'off';
            app.Temp_ConcEditField.FontSize = 14;
            app.Temp_ConcEditField.Position = [551 592 100 22];

            % Create LengthPanel
            app.LengthPanel = uipanel(app.UnitConversionTab);
            app.LengthPanel.TitlePosition = 'centertop';
            app.LengthPanel.Title = 'Length';
            app.LengthPanel.FontWeight = 'bold';
            app.LengthPanel.FontSize = 18;
            app.LengthPanel.Position = [233 494 748 85];

            % Create ButtonGroup_2
            app.ButtonGroup_2 = uibuttongroup(app.LengthPanel);
            app.ButtonGroup_2.SelectionChangedFcn = createCallbackFcn(app, @LengthButtonSwitches, true);
            app.ButtonGroup_2.BorderType = 'none';
            app.ButtonGroup_2.Position = [1 1 736 30];

            % Create MeterButton
            app.MeterButton = uiradiobutton(app.ButtonGroup_2);
            app.MeterButton.Text = '';
            app.MeterButton.Position = [25 4 15 22];
            app.MeterButton.Value = true;

            % Create FootButton
            app.FootButton = uiradiobutton(app.ButtonGroup_2);
            app.FootButton.Text = '';
            app.FootButton.Position = [212 4 16 22];

            % Create InchButton
            app.InchButton = uiradiobutton(app.ButtonGroup_2);
            app.InchButton.Text = '';
            app.InchButton.Position = [385 2 23 22];

            % Create MileButton
            app.MileButton = uiradiobutton(app.ButtonGroup_2);
            app.MileButton.Text = '';
            app.MileButton.Position = [570 4 17 22];

            % Create FootEditFieldLabel
            app.FootEditFieldLabel = uilabel(app.LengthPanel);
            app.FootEditFieldLabel.HorizontalAlignment = 'right';
            app.FootEditFieldLabel.FontSize = 14;
            app.FootEditFieldLabel.Position = [199 23 33 22];
            app.FootEditFieldLabel.Text = 'Foot';

            % Create FootEditField
            app.FootEditField = uieditfield(app.LengthPanel, 'numeric');
            app.FootEditField.FontSize = 14;
            app.FootEditField.Enable = 'off';
            app.FootEditField.Position = [247 23 100 22];

            % Create InchEditFieldLabel
            app.InchEditFieldLabel = uilabel(app.LengthPanel);
            app.InchEditFieldLabel.HorizontalAlignment = 'right';
            app.InchEditFieldLabel.FontSize = 14;
            app.InchEditFieldLabel.Position = [373 23 31 22];
            app.InchEditFieldLabel.Text = 'Inch';

            % Create InchEditField
            app.InchEditField = uieditfield(app.LengthPanel, 'numeric');
            app.InchEditField.FontSize = 14;
            app.InchEditField.Enable = 'off';
            app.InchEditField.Position = [418 23 100 22];

            % Create MileEditFieldLabel
            app.MileEditFieldLabel = uilabel(app.LengthPanel);
            app.MileEditFieldLabel.HorizontalAlignment = 'right';
            app.MileEditFieldLabel.FontSize = 14;
            app.MileEditFieldLabel.Position = [560 23 31 22];
            app.MileEditFieldLabel.Text = 'Mile';

            % Create MileEditField
            app.MileEditField = uieditfield(app.LengthPanel, 'numeric');
            app.MileEditField.FontSize = 14;
            app.MileEditField.Enable = 'off';
            app.MileEditField.Position = [606 23 100 22];

            % Create MeterEditFieldLabel
            app.MeterEditFieldLabel = uilabel(app.LengthPanel);
            app.MeterEditFieldLabel.HorizontalAlignment = 'right';
            app.MeterEditFieldLabel.FontSize = 14;
            app.MeterEditFieldLabel.Position = [11 23 41 22];
            app.MeterEditFieldLabel.Text = 'Meter';

            % Create MeterEditField
            app.MeterEditField = uieditfield(app.LengthPanel, 'numeric');
            app.MeterEditField.FontSize = 14;
            app.MeterEditField.Position = [67 23 100 22];

            % Create ConvertButton_2
            app.ConvertButton_2 = uibutton(app.UnitConversionTab, 'push');
            app.ConvertButton_2.ButtonPushedFcn = createCallbackFcn(app, @LengthCalculateButton, true);
            app.ConvertButton_2.Icon = fullfile(pathToMLAPP, 'Convert.svg');
            app.ConvertButton_2.IconAlignment = 'right';
            app.ConvertButton_2.FontSize = 14;
            app.ConvertButton_2.Position = [878 463 100 25];
            app.ConvertButton_2.Text = 'Convert';

            % Create PascalLabel
            app.PascalLabel = uilabel(app.UnitConversionTab);
            app.PascalLabel.Tag = 'meterLabel';
            app.PascalLabel.HorizontalAlignment = 'center';
            app.PascalLabel.FontSize = 14;
            app.PascalLabel.Interpreter = 'latex';
            app.PascalLabel.Position = [655 465 30 22];
            app.PascalLabel.Text = '$(m)$';

            % Create Meter_Conc
            app.Meter_Conc = uieditfield(app.UnitConversionTab, 'numeric');
            app.Meter_Conc.Editable = 'off';
            app.Meter_Conc.FontSize = 14;
            app.Meter_Conc.Position = [551 465 100 22];

            % Create SpesificHeatPanel
            app.SpesificHeatPanel = uipanel(app.UnitConversionTab);
            app.SpesificHeatPanel.TitlePosition = 'centertop';
            app.SpesificHeatPanel.Title = 'Spesific Heat';
            app.SpesificHeatPanel.FontWeight = 'bold';
            app.SpesificHeatPanel.FontSize = 18;
            app.SpesificHeatPanel.Position = [614 94 365 85];

            % Create ButtonGroup_3
            app.ButtonGroup_3 = uibuttongroup(app.SpesificHeatPanel);
            app.ButtonGroup_3.SelectionChangedFcn = createCallbackFcn(app, @SpesificHeatButtonSwitches, true);
            app.ButtonGroup_3.BorderType = 'none';
            app.ButtonGroup_3.Position = [1 1 350 30];

            % Create J_kgKButton
            app.J_kgKButton = uiradiobutton(app.ButtonGroup_3);
            app.J_kgKButton.Text = '';
            app.J_kgKButton.Position = [25 4 15 22];
            app.J_kgKButton.Value = true;

            % Create BTU_lbRButton
            app.BTU_lbRButton = uiradiobutton(app.ButtonGroup_3);
            app.BTU_lbRButton.Text = '';
            app.BTU_lbRButton.Position = [212 4 16 22];

            % Create BTUlbREditField_2Label
            app.BTUlbREditField_2Label = uilabel(app.SpesificHeatPanel);
            app.BTUlbREditField_2Label.HorizontalAlignment = 'right';
            app.BTUlbREditField_2Label.FontSize = 14;
            app.BTUlbREditField_2Label.Position = [174 23 67 22];
            app.BTUlbREditField_2Label.Text = 'BTU/lb⋅°R';

            % Create BTU_lbREditField_2
            app.BTU_lbREditField_2 = uieditfield(app.SpesificHeatPanel, 'numeric');
            app.BTU_lbREditField_2.FontSize = 14;
            app.BTU_lbREditField_2.Enable = 'off';
            app.BTU_lbREditField_2.Position = [256 23 100 22];

            % Create JkgKEditFieldLabel
            app.JkgKEditFieldLabel = uilabel(app.SpesificHeatPanel);
            app.JkgKEditFieldLabel.HorizontalAlignment = 'right';
            app.JkgKEditFieldLabel.FontSize = 14;
            app.JkgKEditFieldLabel.Position = [4 23 44 22];
            app.JkgKEditFieldLabel.Text = 'J/kg.K';

            % Create J_kgKEditField
            app.J_kgKEditField = uieditfield(app.SpesificHeatPanel, 'numeric');
            app.J_kgKEditField.FontSize = 14;
            app.J_kgKEditField.Position = [63 23 100 22];

            % Create c_pLabel
            app.c_pLabel = uilabel(app.SpesificHeatPanel);
            app.c_pLabel.FontSize = 14;
            app.c_pLabel.Interpreter = 'latex';
            app.c_pLabel.Position = [243 60 33 22];
            app.c_pLabel.Text = '($c_p$)';

            % Create ConvertButton_6
            app.ConvertButton_6 = uibutton(app.UnitConversionTab, 'push');
            app.ConvertButton_6.ButtonPushedFcn = createCallbackFcn(app, @SpesificHeatCalculateButton, true);
            app.ConvertButton_6.Icon = fullfile(pathToMLAPP, 'Convert.svg');
            app.ConvertButton_6.IconAlignment = 'right';
            app.ConvertButton_6.FontSize = 14;
            app.ConvertButton_6.Position = [879 64 100 25];
            app.ConvertButton_6.Text = 'Convert';

            % Create PascalLabel_2
            app.PascalLabel_2 = uilabel(app.UnitConversionTab);
            app.PascalLabel_2.FontSize = 14;
            app.PascalLabel_2.Interpreter = 'latex';
            app.PascalLabel_2.Position = [717 66 95 22];
            app.PascalLabel_2.Text = '$(J/kg.^\circ K)$';

            % Create cp_Conc
            app.cp_Conc = uieditfield(app.UnitConversionTab, 'numeric');
            app.cp_Conc.Editable = 'off';
            app.cp_Conc.FontSize = 14;
            app.cp_Conc.Position = [614 66 100 22];

            % Create MassPanel
            app.MassPanel = uipanel(app.UnitConversionTab);
            app.MassPanel.TitlePosition = 'centertop';
            app.MassPanel.Title = 'Mass';
            app.MassPanel.FontWeight = 'bold';
            app.MassPanel.FontSize = 18;
            app.MassPanel.Position = [233 225 748 85];

            % Create ButtonGroup_4
            app.ButtonGroup_4 = uibuttongroup(app.MassPanel);
            app.ButtonGroup_4.SelectionChangedFcn = createCallbackFcn(app, @MassButtonSwitches, true);
            app.ButtonGroup_4.BorderType = 'none';
            app.ButtonGroup_4.Position = [1 1 531 30];

            % Create KgButton
            app.KgButton = uiradiobutton(app.ButtonGroup_4);
            app.KgButton.Text = '';
            app.KgButton.Position = [25 4 15 22];
            app.KgButton.Value = true;

            % Create SlugButton
            app.SlugButton = uiradiobutton(app.ButtonGroup_4);
            app.SlugButton.Text = '';
            app.SlugButton.Position = [197 4 16 22];

            % Create Pund_MassButton
            app.Pund_MassButton = uiradiobutton(app.ButtonGroup_4);
            app.Pund_MassButton.Text = '';
            app.Pund_MassButton.Position = [379 2 23 22];

            % Create SlugEditFieldLabel
            app.SlugEditFieldLabel = uilabel(app.MassPanel);
            app.SlugEditFieldLabel.HorizontalAlignment = 'right';
            app.SlugEditFieldLabel.FontSize = 14;
            app.SlugEditFieldLabel.Position = [184 24 33 22];
            app.SlugEditFieldLabel.Text = 'Slug';

            % Create SlugEditField
            app.SlugEditField = uieditfield(app.MassPanel, 'numeric');
            app.SlugEditField.FontSize = 14;
            app.SlugEditField.Enable = 'off';
            app.SlugEditField.Position = [232 24 100 22];

            % Create PoundmassEditFieldLabel
            app.PoundmassEditFieldLabel = uilabel(app.MassPanel);
            app.PoundmassEditFieldLabel.HorizontalAlignment = 'right';
            app.PoundmassEditFieldLabel.FontSize = 14;
            app.PoundmassEditFieldLabel.Position = [342 24 83 22];
            app.PoundmassEditFieldLabel.Text = 'Pound mass';

            % Create PoundmassEditField
            app.PoundmassEditField = uieditfield(app.MassPanel, 'numeric');
            app.PoundmassEditField.FontSize = 14;
            app.PoundmassEditField.Enable = 'off';
            app.PoundmassEditField.Position = [439 24 100 22];

            % Create KilogramEditFieldLabel
            app.KilogramEditFieldLabel = uilabel(app.MassPanel);
            app.KilogramEditFieldLabel.HorizontalAlignment = 'right';
            app.KilogramEditFieldLabel.FontSize = 14;
            app.KilogramEditFieldLabel.Position = [3 24 60 22];
            app.KilogramEditFieldLabel.Text = 'Kilogram';

            % Create KilogramEditField
            app.KilogramEditField = uieditfield(app.MassPanel, 'numeric');
            app.KilogramEditField.FontSize = 14;
            app.KilogramEditField.Position = [73 24 100 22];

            % Create ConvertButton_4
            app.ConvertButton_4 = uibutton(app.UnitConversionTab, 'push');
            app.ConvertButton_4.ButtonPushedFcn = createCallbackFcn(app, @MassCalculateButton, true);
            app.ConvertButton_4.Icon = fullfile(pathToMLAPP, 'Convert.svg');
            app.ConvertButton_4.IconAlignment = 'right';
            app.ConvertButton_4.FontSize = 14;
            app.ConvertButton_4.Position = [879 196 100 25];
            app.ConvertButton_4.Text = 'Convert';

            % Create PascalLabel_3
            app.PascalLabel_3 = uilabel(app.UnitConversionTab);
            app.PascalLabel_3.HorizontalAlignment = 'center';
            app.PascalLabel_3.FontSize = 14;
            app.PascalLabel_3.Interpreter = 'latex';
            app.PascalLabel_3.Position = [657 194 34 22];
            app.PascalLabel_3.Text = '$(kg)$';

            % Create kg_Conc
            app.kg_Conc = uieditfield(app.UnitConversionTab, 'numeric');
            app.kg_Conc.Editable = 'off';
            app.kg_Conc.FontSize = 14;
            app.kg_Conc.Position = [552 196 100 22];

            % Create EnergyPanel
            app.EnergyPanel = uipanel(app.UnitConversionTab);
            app.EnergyPanel.TitlePosition = 'centertop';
            app.EnergyPanel.Title = 'Energy';
            app.EnergyPanel.FontWeight = 'bold';
            app.EnergyPanel.FontSize = 18;
            app.EnergyPanel.Position = [234 94 362 85];

            % Create ButtonGroup_5
            app.ButtonGroup_5 = uibuttongroup(app.EnergyPanel);
            app.ButtonGroup_5.SelectionChangedFcn = createCallbackFcn(app, @EnergyButtonSwitches, true);
            app.ButtonGroup_5.BorderType = 'none';
            app.ButtonGroup_5.Position = [1 1 350 30];

            % Create JouleButton
            app.JouleButton = uiradiobutton(app.ButtonGroup_5);
            app.JouleButton.Text = '';
            app.JouleButton.Position = [25 4 15 22];
            app.JouleButton.Value = true;

            % Create BTUButton
            app.BTUButton = uiradiobutton(app.ButtonGroup_5);
            app.BTUButton.Text = '';
            app.BTUButton.Position = [219 4 16 22];

            % Create BTUEditFieldLabel
            app.BTUEditFieldLabel = uilabel(app.EnergyPanel);
            app.BTUEditFieldLabel.HorizontalAlignment = 'right';
            app.BTUEditFieldLabel.FontSize = 14;
            app.BTUEditFieldLabel.Position = [208 23 33 22];
            app.BTUEditFieldLabel.Text = 'BTU';

            % Create BTUEditField
            app.BTUEditField = uieditfield(app.EnergyPanel, 'numeric');
            app.BTUEditField.FontSize = 14;
            app.BTUEditField.Enable = 'off';
            app.BTUEditField.Position = [256 23 100 22];

            % Create JouleEditFieldLabel
            app.JouleEditFieldLabel = uilabel(app.EnergyPanel);
            app.JouleEditFieldLabel.HorizontalAlignment = 'right';
            app.JouleEditFieldLabel.FontSize = 14;
            app.JouleEditFieldLabel.Position = [10 23 38 22];
            app.JouleEditFieldLabel.Text = 'Joule';

            % Create JouleEditField
            app.JouleEditField = uieditfield(app.EnergyPanel, 'numeric');
            app.JouleEditField.FontSize = 14;
            app.JouleEditField.Position = [63 23 100 22];

            % Create ConvertButton_5
            app.ConvertButton_5 = uibutton(app.UnitConversionTab, 'push');
            app.ConvertButton_5.ButtonPushedFcn = createCallbackFcn(app, @EnergyCalculalteButton, true);
            app.ConvertButton_5.Icon = fullfile(pathToMLAPP, 'Convert.svg');
            app.ConvertButton_5.IconAlignment = 'right';
            app.ConvertButton_5.FontSize = 14;
            app.ConvertButton_5.Position = [496 64 100 25];
            app.ConvertButton_5.Text = 'Convert';

            % Create PascalLabel_4
            app.PascalLabel_4 = uilabel(app.UnitConversionTab);
            app.PascalLabel_4.FontSize = 14;
            app.PascalLabel_4.Interpreter = 'latex';
            app.PascalLabel_4.Position = [337 66 55 22];
            app.PascalLabel_4.Text = '$(J)$';

            % Create Joule_Conc
            app.Joule_Conc = uieditfield(app.UnitConversionTab, 'numeric');
            app.Joule_Conc.Editable = 'off';
            app.Joule_Conc.FontSize = 14;
            app.Joule_Conc.Position = [234 66 100 22];

            % Create PressurePanel
            app.PressurePanel = uipanel(app.UnitConversionTab);
            app.PressurePanel.TitlePosition = 'centertop';
            app.PressurePanel.Title = 'Pressure';
            app.PressurePanel.FontWeight = 'bold';
            app.PressurePanel.FontSize = 18;
            app.PressurePanel.Position = [233 359 748 85];

            % Create ButtonGroup_6
            app.ButtonGroup_6 = uibuttongroup(app.PressurePanel);
            app.ButtonGroup_6.SelectionChangedFcn = createCallbackFcn(app, @PressureButtonSwitches, true);
            app.ButtonGroup_6.BorderType = 'none';
            app.ButtonGroup_6.Position = [1 1 736 30];

            % Create PascalButton
            app.PascalButton = uiradiobutton(app.ButtonGroup_6);
            app.PascalButton.Text = '';
            app.PascalButton.Position = [25 4 15 22];
            app.PascalButton.Value = true;

            % Create AtmButton
            app.AtmButton = uiradiobutton(app.ButtonGroup_6);
            app.AtmButton.Text = '';
            app.AtmButton.Position = [212 4 16 22];

            % Create BarButton
            app.BarButton = uiradiobutton(app.ButtonGroup_6);
            app.BarButton.Text = '';
            app.BarButton.Position = [385 2 23 22];

            % Create lb_ft2Button
            app.lb_ft2Button = uiradiobutton(app.ButtonGroup_6);
            app.lb_ft2Button.Text = '';
            app.lb_ft2Button.Position = [570 4 17 22];

            % Create AtmosphereEditFieldLabel
            app.AtmosphereEditFieldLabel = uilabel(app.PressurePanel);
            app.AtmosphereEditFieldLabel.HorizontalAlignment = 'right';
            app.AtmosphereEditFieldLabel.FontSize = 14;
            app.AtmosphereEditFieldLabel.Position = [171 23 80 22];
            app.AtmosphereEditFieldLabel.Text = 'Atmosphere';

            % Create AtmosphereEditField
            app.AtmosphereEditField = uieditfield(app.PressurePanel, 'numeric');
            app.AtmosphereEditField.FontSize = 14;
            app.AtmosphereEditField.Enable = 'off';
            app.AtmosphereEditField.Position = [266 23 100 22];

            % Create BarEditFieldLabel
            app.BarEditFieldLabel = uilabel(app.PressurePanel);
            app.BarEditFieldLabel.HorizontalAlignment = 'right';
            app.BarEditFieldLabel.FontSize = 14;
            app.BarEditFieldLabel.Position = [377 23 27 22];
            app.BarEditFieldLabel.Text = 'Bar';

            % Create BarEditField
            app.BarEditField = uieditfield(app.PressurePanel, 'numeric');
            app.BarEditField.FontSize = 14;
            app.BarEditField.Enable = 'off';
            app.BarEditField.Position = [418 23 100 22];

            % Create lbft2Label
            app.lbft2Label = uilabel(app.PressurePanel);
            app.lbft2Label.HorizontalAlignment = 'right';
            app.lbft2Label.FontSize = 14;
            app.lbft2Label.Position = [552 23 46 22];
            app.lbft2Label.Text = 'psi';

            % Create psiEditField
            app.psiEditField = uieditfield(app.PressurePanel, 'numeric');
            app.psiEditField.FontSize = 14;
            app.psiEditField.Enable = 'off';
            app.psiEditField.Position = [606 23 100 22];

            % Create PascalEditFieldLabel
            app.PascalEditFieldLabel = uilabel(app.PressurePanel);
            app.PascalEditFieldLabel.HorizontalAlignment = 'right';
            app.PascalEditFieldLabel.FontSize = 14;
            app.PascalEditFieldLabel.Position = [5 23 47 22];
            app.PascalEditFieldLabel.Text = 'Pascal';

            % Create PascalEditField
            app.PascalEditField = uieditfield(app.PressurePanel, 'numeric');
            app.PascalEditField.FontSize = 14;
            app.PascalEditField.Position = [67 23 100 22];

            % Create ConvertButton_3
            app.ConvertButton_3 = uibutton(app.UnitConversionTab, 'push');
            app.ConvertButton_3.ButtonPushedFcn = createCallbackFcn(app, @PressureCalculateButton, true);
            app.ConvertButton_3.Icon = fullfile(pathToMLAPP, 'Convert.svg');
            app.ConvertButton_3.IconAlignment = 'right';
            app.ConvertButton_3.FontSize = 14;
            app.ConvertButton_3.Position = [879 328 100 25];
            app.ConvertButton_3.Text = 'Convert';

            % Create PascalLabel_5
            app.PascalLabel_5 = uilabel(app.UnitConversionTab);
            app.PascalLabel_5.HorizontalAlignment = 'center';
            app.PascalLabel_5.FontSize = 14;
            app.PascalLabel_5.Interpreter = 'latex';
            app.PascalLabel_5.Position = [655 329 37 22];
            app.PascalLabel_5.Text = '$(pa)$';

            % Create Pressure_Conc
            app.Pressure_Conc = uieditfield(app.UnitConversionTab, 'numeric');
            app.Pressure_Conc.ValueDisplayFormat = '%13.4f';
            app.Pressure_Conc.Editable = 'off';
            app.Pressure_Conc.FontSize = 14;
            app.Pressure_Conc.Position = [552 330 100 22];

            % Create DropDown
            app.DropDown = uidropdown(app.UnitConversionTab);
            app.DropDown.Items = {'SI Units', 'Imperial Units'};
            app.DropDown.ValueChangedFcn = createCallbackFcn(app, @DropDownValueChanged, true);
            app.DropDown.Position = [999 651 100 22];
            app.DropDown.Value = 'SI Units';

            % Create ChooseaUnitLabel
            app.ChooseaUnitLabel = uilabel(app.UnitConversionTab);
            app.ChooseaUnitLabel.HorizontalAlignment = 'center';
            app.ChooseaUnitLabel.FontSize = 14;
            app.ChooseaUnitLabel.FontWeight = 'bold';
            app.ChooseaUnitLabel.Interpreter = 'latex';
            app.ChooseaUnitLabel.Position = [999 680 99 22];
            app.ChooseaUnitLabel.Text = 'Choose a Unit';

            % Create Image3
            app.Image3 = uiimage(app.UnitConversionTab);
            app.Image3.Position = [94 610 100 100];
            app.Image3.ImageSource = fullfile(pathToMLAPP, 'Temp.svg');

            % Create Image4
            app.Image4 = uiimage(app.UnitConversionTab);
            app.Image4.Position = [94 486 100 100];
            app.Image4.ImageSource = fullfile(pathToMLAPP, 'Length.svg');

            % Create Image5
            app.Image5 = uiimage(app.UnitConversionTab);
            app.Image5.Position = [94 351 100 100];
            app.Image5.ImageSource = fullfile(pathToMLAPP, 'Pressure.svg');

            % Create Image6
            app.Image6 = uiimage(app.UnitConversionTab);
            app.Image6.Position = [94 217 100 100];
            app.Image6.ImageSource = fullfile(pathToMLAPP, 'Mass.svg');

            % Create Image7
            app.Image7 = uiimage(app.UnitConversionTab);
            app.Image7.Position = [94 86 100 100];
            app.Image7.ImageSource = fullfile(pathToMLAPP, 'Energy.svg');

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = REASIS

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end