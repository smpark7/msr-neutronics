flow_velocity1=0#400 # cm/s
flow_velocity2=0#360 # cm/s
flow_velocity3=0#290 # cm/s
flow_velocity4=0#170 # cm/s
flow_velocity5=0 # cm/s
nt_scale=1e13
ini_temp=923
diri_temp=923

[GlobalParams]
  num_groups = 2
  num_precursor_groups = 6
  use_exp_form = false
  group_fluxes = 'group1 group2'
  temperature = temp
  sss2_input = false
  pre_concs = 'pre1 pre2 pre3 pre4 pre5 pre6'
  account_delayed = true
[]

[Mesh]
  # file = '2d_lattice_structured.msh'
  file = 'msfr_fuel_core_2d_5r.e'
[../]

[Problem]
  coord_type = RZ
[]

[Variables]
  [./group1]
    order = FIRST
    family = LAGRANGE
    initial_condition = 1
    scaling = 1e4
  [../]
  [./group2]
    order = FIRST
    family = LAGRANGE
    initial_condition = 1
    scaling = 1e4
  [../]
  [./temp]
    initial_condition = ${ini_temp}
    scaling = 1e-4
  [../]
[]

[Precursors]
  [./pres1]
    var_name_base = pre
    block = 'fuel1 fuel2 fuel3 fuel4 fuel5'
    outlet_boundaries = 'fuel1_top'
    u_def = 0
    v_def = 0
    w_def = 0
    nt_exp_form = false
    family = MONOMIAL
    order = CONSTANT
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
  [./diff_group1]
    type = GroupDiffusion
    variable = group1
    group_number = 1
  [../]
  [./sigma_r_group1]
    type = SigmaR
    variable = group1
    group_number = 1
  [../]
  [./fission_source_group1]
    type = CoupledFissionKernel
    variable = group1
    group_number = 1
    block = 'fuel1 fuel2 fuel3 fuel4 fuel5'
  [../]
  [./delayed_group1]
    type = DelayedNeutronSource
    variable = group1
    block = 'fuel1 fuel2 fuel3 fuel4 fuel5'
    group_number=1
  [../]
  [./inscatter_group1]
    type = InScatter
    variable = group1
    group_number = 1
  [../]
  [./diff_group2]
    type = GroupDiffusion
    variable = group2
    group_number = 2
  [../]
  [./sigma_r_group2]
    type = SigmaR
    variable = group2
    group_number = 2
  [../]
  [./time_group2]
    type = NtTimeDerivative
    variable = group2
    group_number = 2
  [../]
  [./fission_source_group2]
    type = CoupledFissionKernel
    variable = group2
    group_number = 2
    block = 'fuel1 fuel2 fuel3 fuel4 fuel5'
  [../]
  [./inscatter_group2]
    type = InScatter
    variable = group2
    group_number = 2
  [../]

  # Temperature
  [./temp_time_derivative]
    type = MatINSTemperatureTimeDerivative
    variable = temp
  [../]
  [./temp_source_fuel]
    type = TransientFissionHeatSource
    variable = temp
    nt_scale=${nt_scale}
    block = 'fuel1 fuel2 fuel3 fuel4 fuel5'
  [../]
  # [./temp_source_mod]
  #   type = GammaHeatSource
  #   variable = temp
  #   gamma = .0144 # Cammi .0144
  #   block = 'struc'
  #   average_fission_heat = 'average_fission_heat'
  # [../]
  [./temp_diffusion]
    type = MatDiffusion
    D_name = 'k'
    variable = temp
  [../]
  [./temp_advection_fuel1]
    type = ConservativeTemperatureAdvection
    velocity = '0 ${flow_velocity1} 0'
    variable = temp
    block = 'fuel1'
  [../]
  [./temp_advection_fuel2]
    type = ConservativeTemperatureAdvection
    velocity = '0 ${flow_velocity2} 0'
    variable = temp
    block = 'fuel2'
  [../]
  [./temp_advection_fuel3]
    type = ConservativeTemperatureAdvection
    velocity = '0 ${flow_velocity3} 0'
    variable = temp
    block = 'fuel3'
  [../]
  [./temp_advection_fuel4]
    type = ConservativeTemperatureAdvection
    velocity = '0 ${flow_velocity4} 0'
    variable = temp
    block = 'fuel4'
  [../]
  [./temp_advection_fuel5]
    type = ConservativeTemperatureAdvection
    velocity = '0 ${flow_velocity5} 0'
    variable = temp
    block = 'fuel5'
  [../]
[]

[BCs]
  [./vacuum_group1]
    type = VacuumConcBC
    boundary = 'fuel1_bottom fuel1_top fuel2_bottom fuel2_top fuel3_bottom fuel3_top fuel4_bottom fuel4_top fuel5_bottom fuel5_top struc_bottom struc_top outer_wall'
    variable = group1
  [../]
  [./vacuum_group2]
    type = VacuumConcBC
    boundary = 'fuel1_bottom fuel1_top fuel2_bottom fuel2_top fuel3_bottom fuel3_top fuel4_bottom fuel4_top fuel5_bottom fuel5_top struc_bottom struc_top outer_wall'
    variable = group2
  [../]
  # [./reflect_group1]
  #   type = NeumannBC
  #   boundary = 'fuel1_bottom fuel1_top fuel2_bottom fuel2_top fuel3_bottom fuel3_top fuel4_bottom fuel4_top fuel5_bottom fuel5_top struc_bottom struc_top outer_wall'
  #   variable = group1
  #   value = '0'
  # [../]
  # [./reflect_group2]
  #   type = NeumannBC
  #   boundary = 'fuel1_bottom fuel1_top fuel2_bottom fuel2_top fuel3_bottom fuel3_top fuel4_bottom fuel4_top fuel5_bottom fuel5_top struc_bottom struc_top outer_wall'
  #   variable = group2
  #   value = '0'
  # [../]
  [./temp_diri_cg]
    boundary = 'struc_bottom fuel1_bottom fuel2_bottom fuel3_bottom fuel4_bottom fuel5_bottom outer_wall'
    # boundary = 'struc_bottom fuel1_bottom fuel2_bottom fuel3_bottom fuel4_bottom fuel5_bottom'
    type = FunctionDirichletBC
    function = 'temp_bc_func'
    variable = temp
  [../]
  [./temp_advection_outlet1]
    boundary = 'fuel1_top'
    type = TemperatureOutflowBC
    variable = temp
    velocity = '0 ${flow_velocity1} 0'
  [../]
  [./temp_advection_outlet2]
    boundary = 'fuel2_top'
    type = TemperatureOutflowBC
    variable = temp
    velocity = '0 ${flow_velocity2} 0'
  [../]
  [./temp_advection_outlet3]
    boundary = 'fuel3_top'
    type = TemperatureOutflowBC
    variable = temp
    velocity = '0 ${flow_velocity3} 0'
  [../]
  [./temp_advection_outlet4]
    boundary = 'fuel4_top'
    type = TemperatureOutflowBC
    variable = temp
    velocity = '0 ${flow_velocity4} 0'
  [../]
  [./temp_advection_outlet5]
    boundary = 'fuel5_top'
    type = TemperatureOutflowBC
    variable = temp
    velocity = '0 ${flow_velocity5} 0'
  [../]
  # [./temp_diri_outlet]
  #   boundary = 'fuel_top'
  #   type = DirichletBC
  #   value = '1023'
  #   variable = temp
  # [../]
[]

[Functions]
  [./temp_bc_func]
    type = ParsedFunction
    value = '${ini_temp} - (${ini_temp} - ${diri_temp}) * tanh(t/1e-2)'
  [../]
[]

[Materials]
  [./fuel]
    type = GenericMoltresMaterial
    property_tables_root = './data/newt_msre_fuel_'
    interp_type = 'spline'
    block = 'fuel1 fuel2 fuel3 fuel4 fuel5'
    prop_names = 'k cp'
    prop_values = '.01014 1752' # Robertson MSRE technical report @ 922 K
  [../]
  [./rho_fuel]
    type = DerivativeParsedMaterial
    f_name = rho
    function = '(4983.56 - .882 * temp) * .000001'
    args = 'temp'
    derivative_order = 1
    block = 'fuel1 fuel2 fuel3 fuel4 fuel5'
  [../]
  [./struc]
    type = GenericMoltresMaterial
    property_tables_root = './data/newt_msre_mod_'
    interp_type = 'spline'
    prop_names = 'k cp'
    prop_values = '.25 1560' # Cammi 2011 at 908 K
    block = 'struc'
  [../]
  [./rho_struc]
    type = DerivativeParsedMaterial
    f_name = rho
    function = '(10 - .0000001 * temp) * 0.001'
    args = 'temp'
    derivative_order = 1
    block = 'struc'
  [../]
[]

[Executioner]
  type = Transient
  end_time = 10000

  nl_rel_tol = 1e-6
  nl_abs_tol = 1e-6

  solve_type = 'NEWTON'
  petsc_options = '-snes_converged_reason -ksp_converged_reason -snes_linesearch_monitor'
  petsc_options_iname = '-pc_type -pc_factor_shift_type'
  petsc_options_value = 'lu       NONZERO'
  line_search = 'none'
   # petsc_options_iname = '-snes_type'
  # petsc_options_value = 'test'

  nl_max_its = 100
  l_max_its = 100

  dtmin = 1e-5
  # dtmax = 1
  # dt = 1e-3
  [./TimeStepper]
    type = IterationAdaptiveDT
    dt = 1e-3
    cutback_factor = 0.4
    growth_factor = 1.2
    optimal_iterations = 20
  [../]
[]

[Preconditioning]
  [./SMP]
    type = SMP
    full = true
  [../]
[]

[Postprocessors]
  [./group1_current]
    type = IntegralNewVariablePostprocessor
    variable = group1
    outputs = 'console exodus'
  [../]
  [./group1_old]
    type = IntegralOldVariablePostprocessor
    variable = group1
    outputs = 'console exodus'
  [../]
  [./multiplication]
    type = DivisionPostprocessor
    value1 = group1_current
    value2 = group1_old
    outputs = 'console exodus'
  [../]
  [./temp_fuel1]
    type = ElementAverageValue
    variable = temp
    block = 'fuel1'
    outputs = 'exodus console'
  [../]
  [./temp_fuel2]
    type = ElementAverageValue
    variable = temp
    block = 'fuel2'
    outputs = 'exodus console'
  [../]
  [./temp_fuel3]
    type = ElementAverageValue
    variable = temp
    block = 'fuel3'
    outputs = 'exodus console'
  [../]
  [./temp_fuel4]
    type = ElementAverageValue
    variable = temp
    block = 'fuel4'
    outputs = 'exodus console'
  [../]
  [./temp_fuel5]
    type = ElementAverageValue
    variable = temp
    block = 'fuel5'
    outputs = 'exodus console'
  [../]
  [./temp_struc]
    type = ElementAverageValue
    variable = temp
    block = 'struc'
    outputs = 'exodus console'
  [../]
  # [./average_fission_heat]
  #   type = AverageFissionHeat
  #   nt_scale = ${nt_scale}
  #   execute_on = 'linear nonlinear'
  #   outputs = 'console'
  #   block = 'fuel'
  # [../]
[]

[Outputs]
  perf_graph = true
  print_linear_residuals = true
  [./exodus]
    type = Exodus
    file_base = 'msfr_fuel_core_2d_5r'
    execute_on = 'final'
  [../]
[]

[Debug]
  show_var_residual_norms = true
[]

# [ICs]
#   [./temp_ic]
#     type = RandomIC
#     variable = temp
#     min = 922
#     max = 1022
#   [../]
#   [./group1_ic]
#     type = RandomIC
#     variable = group1
#     min = .5
#     max = 1.5
#   [../]
#   [./group2_ic]
#     type = RandomIC
#     variable = group2
#     min = .5
#     max = 1.5
#   [../]
# []
