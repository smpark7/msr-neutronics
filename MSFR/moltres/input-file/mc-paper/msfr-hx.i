flow_velocity=112.75 # cm/s
pre_flow_velocity=112.75
nt_scale=1e-15     # neutron flux scaling factor
pre_scale=1e-12    # precursor scaling factor
ini_temp=973     # initial temp
diri_temp=973    # dirichlet BC temp
ini_neut=1e14

[GlobalParams]
  num_groups = 6
  num_precursor_groups = 8
  temperature = temp
  group_fluxes = 'group1 group2 group3 group4 group5 group6'
  pre_concs = 'pre1 pre2 pre3 pre4 pre5 pre6 pre7 pre8'
  use_exp_form = false
  sss2_input = true
  account_delayed = true
  # alpha = 1
  # eigen = true
[]

[Mesh]
  file = 'fuel-blanket-super-fine.e'
[../]

[Problem]
  type = FEProblem
  coord_type = RZ
  rz_coord_axis = Y
[]

[Variables]
  [./group1]
    order = FIRST
    family = LAGRANGE
    scaling = ${nt_scale}
  [../]
  [./group2]
    order = FIRST
    family = LAGRANGE
    scaling = ${nt_scale}
  [../]
  [./group3]
    order = FIRST
    family = LAGRANGE
    scaling = ${nt_scale}
  [../]
  [./group4]
    order = FIRST
    family = LAGRANGE
    scaling = ${nt_scale}
  [../]
  [./group5]
    order = FIRST
    family = LAGRANGE
    scaling = ${nt_scale}
  [../]
  [./group6]
    order = FIRST
    family = LAGRANGE
    scaling = ${nt_scale}
  [../]
  [./temp]
    order = FIRST
    family = LAGRANGE
    scaling = 1
  [../]
[]

[Precursors]
  [./pres]
    var_name_base = pre
    block = 'fuel'
    outlet_boundaries = 'fuel_top'
    # prec_scale = 1
    constant_velocity_values = true
    u_def = 0
    v_def = ${pre_flow_velocity}
    w_def = 0
    nt_exp_form = false
    family = MONOMIAL
    order = CONSTANT
    transient = true
    loop_precs = true
    multi_app = loopApp
    is_loopapp = false
    inlet_boundaries = 'fuel_bottom'
    scaling = ${pre_scale}
    # jac_test = true
  [../]
[]

[Kernels]
  # Neutronics
  [./time_group1]
    type = NtTimeDerivative
    variable = group1
    group_number = 1
  [../]
  [./time_group2]
    type = NtTimeDerivative
    variable = group2
    group_number = 2
  [../]
  [./time_group3]
    type = NtTimeDerivative
    variable = group3
    group_number = 3
  [../]
  [./time_group4]
    type = NtTimeDerivative
    variable = group4
    group_number = 4
  [../]
  [./time_group5]
    type = NtTimeDerivative
    variable = group5
    group_number = 5
  [../]
  [./time_group6]
    type = NtTimeDerivative
    variable = group6
    group_number = 6
  [../]

  [./diff_group1]
    type = GroupDiffusion
    variable = group1
    group_number = 1
  [../]
  [./diff_group2]
    type = GroupDiffusion
    variable = group2
    group_number = 2
  [../]
  [./diff_group3]
    type = GroupDiffusion
    variable = group3
    group_number = 3
  [../]
  [./diff_group4]
    type = GroupDiffusion
    variable = group4
    group_number = 4
  [../]
  [./diff_group5]
    type = GroupDiffusion
    variable = group5
    group_number = 5
  [../]
  [./diff_group6]
    type = GroupDiffusion
    variable = group6
    group_number = 6
  [../]

  [./sigma_r_group1]
    type = SigmaR
    variable = group1
    group_number = 1
  [../]
  [./sigma_r_group2]
    type = SigmaR
    variable = group2
    group_number = 2
  [../]
  [./sigma_r_group3]
    type = SigmaR
    variable = group3
    group_number = 3
  [../]
  [./sigma_r_group4]
    type = SigmaR
    variable = group4
    group_number = 4
  [../]
  [./sigma_r_group5]
    type = SigmaR
    variable = group5
    group_number = 5
  [../]
  [./sigma_r_group6]
    type = SigmaR
    variable = group6
    group_number = 6
  [../]

  [./inscatter_group1]
    type = InScatter
    variable = group1
    group_number = 1
  [../]
  [./inscatter_group2]
    type = InScatter
    variable = group2
    group_number = 2
  [../]
  [./inscatter_group3]
    type = InScatter
    variable = group3
    group_number = 3
  [../]
  [./inscatter_group4]
    type = InScatter
    variable = group4
    group_number = 4
  [../]
  [./inscatter_group5]
    type = InScatter
    variable = group5
    group_number = 5
  [../]
  [./inscatter_group6]
    type = InScatter
    variable = group6
    group_number = 6
  [../]

  [./fission_source_group1]
    type = CoupledFissionKernel
    variable = group1
    group_number = 1
  [../]
  [./fission_source_group2]
    type = CoupledFissionKernel
    variable = group2
    group_number = 2
  [../]
  [./fission_source_group3]
    type = CoupledFissionKernel
    variable = group3
    group_number = 3
  [../]
  [./fission_source_group4]
    type = CoupledFissionKernel
    variable = group4
    group_number = 4
  [../]
  [./fission_source_group5]
    type = CoupledFissionKernel
    variable = group5
    group_number = 5
  [../]
  [./fission_source_group6]
    type = CoupledFissionKernel
    variable = group6
    group_number = 6
  [../]

  [./delayed_group1]
    type = DelayedNeutronSource
    variable = group1
    group_number = 1
    block = 'fuel'
  [../]
  [./delayed_group2]
    type = DelayedNeutronSource
    variable = group2
    group_number = 2
    block = 'fuel'
  [../]
  [./delayed_group3]
    type = DelayedNeutronSource
    variable = group3
    group_number = 3
    block = 'fuel'
  [../]
  [./delayed_group4]
    type = DelayedNeutronSource
    variable = group4
    group_number = 4
    block = 'fuel'
  [../]
  [./delayed_group5]
    type = DelayedNeutronSource
    variable = group5
    group_number = 5
    block = 'fuel'
  [../]
  [./delayed_group6]
    type = DelayedNeutronSource
    variable = group6
    group_number = 6
    block = 'fuel'
  [../]

  # Temperature
  [./temp_time_derivative]
    type = MatINSTemperatureTimeDerivative
    variable = temp
  [../]
  [./temp_cond]
    type = MatDiffusion
    variable = temp
    D_name = 'k'
  [../]
  [./temp_source]
    type = TransientFissionHeatSource
    nt_scale=1
    variable = temp
  [../]
  [./temp_advection_fuel]
    type = ConservativeTemperatureAdvection
    velocity = '0 ${flow_velocity} 0'
    variable = temp
    block = 'fuel'
  [../]
[]

[Materials]
  [./fuel]
    type = GenericMoltresMaterial
    property_tables_root = '../../input-data/mc-paper/xs-data/data/mc_paper_fuel_'
    interp_type = 'spline'
    prop_names = 'cp'
    prop_values = '1355'
    block = 'fuel'
  [../]
  [./rho_fuel]
    type = DerivativeParsedMaterial
    f_name = rho
    function = '(4983.56 - .882 * temp) * .000001'    # kg cm-3
    args = 'temp'
    derivative_order = 1
    block = 'fuel'
  [../]
  [./k_fuel]
    type = ParsedMaterial
    f_name = k
    function = '(0.928 + 8.397e-5 * temp) * .01'
    args = 'temp'
    block = 'fuel'
  [../]
  [./mu_fuel]
    type = ParsedMaterial
    f_name = mu
    function = 'rho * exp(3689 / temp) * 5.55e-8 * 10000'
    material_property_names = 'rho'
    args = 'temp'
    block = 'fuel'
  [../]
  [./blanket]
    type = GenericMoltresMaterial
    property_tables_root = '../../input-data/mc-paper/xs-data/data/mc_paper_blanket_'
    interp_type = 'spline'
    prop_names = 'cp'
    prop_values = '1355'
    block = 'blanket'
  [../]
  [./rho_blanket]
    type = DerivativeParsedMaterial
    f_name = rho
    function = '(4983.56 - .882 * temp) * .000001'    # kg cm-3
    args = 'temp'
    derivative_order = 1
    block = 'blanket'
  [../]
  [./k_blanket]
    type = ParsedMaterial
    f_name = k
    function = '(0.928 + 8.397e-5 * temp) * .01'
    args = 'temp'
    block = 'blanket'
  [../]
  # [./struc]
  #   type = GenericMoltresMaterial
  #   property_tables_root = '../../input-data/mc-paper/xs-data/data/mc_paper_struc_'
  #   interp_type = 'spline'
  #   block = 'struc'
  #   prop_names = 'k cp'     # conductivity, capacity
  #   prop_values = '.25 560'   # W cm-1 K-1, J kg-1 K-1
  # [../]
  # [./rho_struc]
  #   type = ParsedMaterial
  #   f_name = rho
  #   function = '.01'
  #   args = 'temp'
  #   block = 'struc'
  # [../]
  # [./drho_struc]
  #   type = ParsedMaterial
  #   f_name = 'drho/dtemp'
  #   function = '0'
  #   args = 'temp'
  #   block = 'struc'
  # [../]
[]

[BCs]
  [./temp_diri]
    boundary = 'blanket_bottom'
    type = DirichletBC
    variable = temp
    value = ${diri_temp}
  [../]
  [./temp_fuel_bottom]
    boundary = 'fuel_bottom'
    type = PostprocessorDirichletBC
    postprocessor = inlet_mean_temp
    variable = temp
  [../]
  # [./temp_top]
  #   boundary = 'struc_top'
  #   type = DirichletBC
  #   variable = temp
  #   value = ${struc_diri_temp}
  # [../]
  [./temp_outer]
    boundary = 'outer'
    type = DirichletBC
    value = ${diri_temp}
    variable = temp
  [../]
  # [./temp_advection_inlet]
  #   boundary = 'fuel_bottom'
  #   type = TemperatureInflowBC
  #   variable = temp
  #   uu = '0'
  #   vv = ${flow_velocity}
  #   ww = '0'
  #   inlet_conc = ${diri_temp}
  # [../]
  [./temp_advection_outlet]
    boundary = 'fuel_top'
    type = TemperatureOutflowBC
    variable = temp
    velocity = '0 ${flow_velocity} 0'
  [../]
  [./vacuum_group1]
    type = VacuumConcBC
    boundary = 'fuel_bottom blanket_bottom fuel_top blanket_top outer'
    variable = group1
  [../]
  [./vacuum_group2]
    type = VacuumConcBC
    boundary = 'fuel_bottom blanket_bottom fuel_top blanket_top outer'
    variable = group2
  [../]
  [./vacuum_group3]
    type = VacuumConcBC
    boundary = 'fuel_bottom blanket_bottom fuel_top blanket_top outer'
    variable = group3
  [../]
  [./vacuum_group4]
    type = VacuumConcBC
    boundary = 'fuel_bottom blanket_bottom fuel_top blanket_top outer'
    variable = group4
  [../]
  [./vacuum_group5]
    type = VacuumConcBC
    boundary = 'fuel_bottom blanket_bottom fuel_top blanket_top outer'
    variable = group5
  [../]
  [./vacuum_group6]
    type = VacuumConcBC
    boundary = 'fuel_bottom blanket_bottom fuel_top blanket_top outer'
    variable = group6
  [../]
[]

[Executioner]
  type = Transient
  end_time = 100

  nl_rel_tol = 1e-6
  nl_abs_tol = 1e-6

  solve_type = 'NEWTON'
  petsc_options = '-snes_converged_reason -ksp_converged_reason -snes_linesearch_monitor'
  petsc_options_iname = '-pc_type -pc_factor_shift_type'
  petsc_options_value = 'lu       NONZERO'
  line_search = 'none'
   # petsc_options_iname = '-snes_type'
  # petsc_options_value = 'test'

  nl_max_its = 30
  l_max_its = 100

  dtmin = 1e-6
  # dtmax = 1
  # dt = 1e-3
  [./TimeStepper]
    type = IterationAdaptiveDT
    dt = 1e-6
    cutback_factor = .5
    growth_factor = 1.2
    optimal_iterations = 25
  [../]
[]

[Preconditioning]
  [./FDP]
    type = SMP
    full = true
  [../]
[]

[Postprocessors]
  [./group1_current]
    type = IntegralNewVariablePostprocessor
    variable = group1
    outputs = 'console exodus csv'
  [../]
  [./group2_current]
    type = IntegralNewVariablePostprocessor
    variable = group2
    outputs = 'console exodus csv'
  [../]
  [./group3_current]
    type = IntegralNewVariablePostprocessor
    variable = group3
    outputs = 'console exodus csv'
  [../]
  [./group4_current]
    type = IntegralNewVariablePostprocessor
    variable = group4
    outputs = 'console exodus csv'
  [../]
  [./group5_current]
    type = IntegralNewVariablePostprocessor
    variable = group5
    outputs = 'console exodus csv'
  [../]
  [./group6_current]
    type = IntegralNewVariablePostprocessor
    variable = group6
    outputs = 'console exodus csv'
  [../]
#   [./group1_old]
#     type = IntegralOldVariablePostprocessor
#     variable = group1
#     outputs = 'console exodus'
#   [../]
#   [./multiplication]
#     type = DivisionPostprocessor
#     value1 = group1_current
#     value2 = group1_old
#     outputs = 'console exodus'
#   [../]
  [./temp_fuel]
    type = ElementAverageValue
    variable = temp
    block = 'fuel'
    outputs = 'exodus console csv'
  [../]
  [./max_temp_fuel]
    type = ElementExtremeValue
    variable = temp
    block = 'fuel'
    value_type = 'max'
    outputs = 'exodus console csv'
  [../]
  [./temp_blanket]
    type = ElementAverageValue
    variable = temp
    block = 'blanket'
    outputs = 'exodus console csv'
  [../]
  [./heat_fuel]
    type = ElmIntegTotFissHeatPostprocessor
    block = 'fuel'
    outputs = 'exodus'
  [../]
  [./heat_blanket]
    type = ElmIntegTotFissHeatPostprocessor
    block = 'blanket'
    outputs = 'exodus'
  [../]
  [./heat]
    type = ElmIntegTotFissHeatPostprocessor
    outputs = 'csv'
  [../]
  [./coreEndTemp]
    type = SideAverageValue
    variable = temp
    boundary = 'fuel_top'
    outputs = 'exodus console'
  [../]
  [./inlet_mean_temp]
    type = Receiver
    default = 930
    initialize_old = true
    execute_on = 'timestep_begin'
  [../]
[]

[Outputs]
  perf_graph = true
  csv = true
  [./exodus]
    type = Exodus
    execute_on = 'timestep_end'
  [../]
[]

[Debug]
  show_var_residual_norms = true
[]

[MultiApps]
  [./loopApp]
    type = TransientMultiApp
    app_type = MoltresApp
    execute_on = timestep_begin
    positions = '200.0 200.0 0.0'
    input_files = 'sub-hx.i'
  [../]
[]

[Transfers]
  [./from_loop]
    type = MultiAppPostprocessorTransfer
    multi_app = loopApp
    from_postprocessor = loopEndTemp
    to_postprocessor = inlet_mean_temp
    direction = from_multiapp
    reduction_type = maximum
  [../]
  [./to_loop]
    type = MultiAppPostprocessorTransfer
    multi_app = loopApp
    from_postprocessor = coreEndTemp
    to_postprocessor = coreEndTemp
    direction = to_multiapp
  [../]
[]

[ICs]
  [./temp_ic]
    type = ConstantIC
    variable = temp
    value = ${ini_temp}
  [../]
  [./group1_ic]
    type = ConstantIC
    variable = group1
    value = ${ini_neut}
  [../]
  [./group2_ic]
    type = ConstantIC
    variable = group2
    value = ${ini_neut}
  [../]
  [./group3_ic]
    type = ConstantIC
    variable = group3
    value = ${ini_neut}
  [../]
  [./group4_ic]
    type = ConstantIC
    variable = group4
    value = ${ini_neut}
  [../]
  [./group5_ic]
    type = ConstantIC
    variable = group5
    value = ${ini_neut}
  [../]
  [./group6_ic]
    type = ConstantIC
    variable = group6
    value = ${ini_neut}
  [../]
[]
