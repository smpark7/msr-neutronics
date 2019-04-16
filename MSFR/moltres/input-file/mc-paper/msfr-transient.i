flow_velocity=0.0 # cm/s
pre_flow_velocity=0.0
nt_scale=1e-22     # neutron flux scaling factor
ini_temp=923     # initial temp
diri_temp=923    # dirichlet BC temp
struc_diri_temp=1050
ini_neut=1e22

[GlobalParams]
  num_groups = 6
  num_precursor_groups = 8
  temperature = temp
  group_fluxes = 'group1 group2 group3 group4 group5 group6'
  pre_concs = 'pre1 pre2 pre3 pre4 pre5 pre6 pre7 pre8'
  prec_scale = 1e20
  use_exp_form = false
  sss2_input = true
  account_delayed = true
  alpha = 1
  # eigen = true
[]

[Mesh]
  file = 'mc-paper-mesh.msh'
[../]

[Variables]
  [./group1]
    order = FIRST
    family = LAGRANGE
    scaling = ${nt_scale}
    initial_condition = ${ini_neut}
  [../]
  [./group2]
    order = FIRST
    family = LAGRANGE
    scaling = ${nt_scale}
    initial_condition = ${ini_neut}
  [../]
  [./group3]
    order = FIRST
    family = LAGRANGE
    scaling = ${nt_scale}
    initial_condition = ${ini_neut}
  [../]
  [./group4]
    order = FIRST
    family = LAGRANGE
    scaling = ${nt_scale}
    initial_condition = ${ini_neut}
  [../]
  [./group5]
    order = FIRST
    family = LAGRANGE
    scaling = ${nt_scale}
    initial_condition = ${ini_neut}
  [../]
  [./group6]
    order = FIRST
    family = LAGRANGE
    scaling = ${nt_scale}
    initial_condition = ${ini_neut}
  [../]
  [./temp]
    order = FIRST
    family = LAGRANGE
    scaling = 1e-9
    initial_condition = ${ini_temp}
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
    nt_scale=${nt_scale}
    variable = temp
  [../]
  [./temp_advection_fuel]
    type = ConservativeTemperatureAdvection
    velocity = '0 ${flow_velocity} 0'
    variable = temp
    block = 'fuel'
  [../]
  # [./temp_advection_fuel]
  #   type = INSADTemperatureAdvection
  #   velocity = '0 ${flow_velocity} 0'
  #   variable = temp
  #   block = 'fuel'
  # [../]
  # [./temp_advection_supg_fuel]
  #   type = INSADTemperatureAdvectionSUPG
  #   velocity = '0 ${flow_velocity} 0'
  #   variable = temp
  #   block = 'fuel'
  # [../]
[]

[AuxVariables]
#   [./Qf]
#     family = MONOMIAL
#     order = CONSTANT
#   [../]
#   [./diffus_temp]
#     family = MONOMIAL
#     order = CONSTANT
#   [../]
#   [./diffus_resid]
#     family = LAGRANGE
#     order = FIRST
#   [../]
#   [./src_resid]
#     family = LAGRANGE
#     order = FIRST
#   [../]
#   [./bc_resid]
#     family = LAGRANGE
#     order = FIRST
#   [../]
#   [./tot_resid]
#     family = LAGRANGE
#     order = FIRST
#   [../]
[../]

[AuxKernels]
#   [./Qf]
#     type = FissionHeatSourceAux
#     variable = Qf
#     tot_fissions = tot_fissions
#   [../]
#   [./diffus_temp]
#     type = MatDiffusionAux
#     variable = diffus_temp
#     diffuse_var = temp
#     prop_name = 'k'
#   [../]
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
  [tau_fuel]
    type = INSADTauMaterial
    velocity = '0 ${flow_velocity} 0'
    pressure = ''
    transient_term = false
    block = 'fuel'
  []
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
  [./struc]
    type = GenericMoltresMaterial
    property_tables_root = '../../input-data/mc-paper/xs-data/data/mc_paper_struc_'
    interp_type = 'spline'
    block = 'struc'
    prop_names = 'k cp'     # conductivity, capacity
    prop_values = '.25 560'   # W cm-1 K-1, J kg-1 K-1
  [../]
  [./rho_struc]
    type = ParsedMaterial
    f_name = rho
    function = '10 * 0.000001'
    args = 'temp'
    block = 'struc'
  [../]
  [./drho_struc]
    type = ParsedMaterial
    f_name = 'drho/dtemp'
    function = '0'
    args = 'temp'
    block = 'struc'
  [../]
[]

[BCs]
  [./temp]
    boundary = 'fuel_bottom struc_bottom'
    type = DirichletBC
    variable = temp
    value = ${diri_temp}
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
    boundary = 'fuel_bottom struc_bottom fuel_top struc_top outer'
    variable = group1
  [../]
  [./vacuum_group2]
    type = VacuumConcBC
    boundary = 'fuel_bottom struc_bottom fuel_top struc_top outer'
    variable = group2
  [../]
  [./vacuum_group3]
    type = VacuumConcBC
    boundary = 'fuel_bottom struc_bottom fuel_top struc_top outer'
    variable = group3
  [../]
  [./vacuum_group4]
    type = VacuumConcBC
    boundary = 'fuel_bottom struc_bottom fuel_top struc_top outer'
    variable = group4
  [../]
  [./vacuum_group5]
    type = VacuumConcBC
    boundary = 'fuel_bottom struc_bottom fuel_top struc_top outer'
    variable = group5
  [../]
  [./vacuum_group6]
    type = VacuumConcBC
    boundary = 'fuel_bottom struc_bottom fuel_top struc_top outer'
    variable = group6
  [../]
[]

[Executioner]
  # type = NonlinearEigen
  # free_power_iterations = 8
  # # source_abs_tol = 1e-12
  # # source_rel_tol = 1e-8
  # output_after_power_iterations = true


#   type = InversePowerMethod
#   max_power_iterations = 100
#   xdiff = 'group1diff'

#   bx_norm = 'bnorm'
#   k0 = 1.0
#   pfactor = 1e-2
#   # l_max_its = 200
#   Chebyshev_acceleration_on = True
#   # eig_check_tol = 1e-10
#   # sol_check_tol = 1e-10

#   solve_type = 'PJFNK'
#   # solve_type = 'NEWTON'
#   petsc_options = '-snes_converged_reason -ksp_converged_reason -snes_linesearch_monitor'
#   # petsc_options_iname = '-pc_type -sub_pc_type'
#   # petsc_options_value = 'asm lu'

  type = Transient
  end_time = 1000

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
  [./group2_current]
    type = IntegralNewVariablePostprocessor
    variable = group2
    outputs = 'console exodus'
  [../]
  [./group3_current]
    type = IntegralNewVariablePostprocessor
    variable = group3
    outputs = 'console exodus'
  [../]
  [./group4_current]
    type = IntegralNewVariablePostprocessor
    variable = group4
    outputs = 'console exodus'
  [../]
  [./group5_current]
    type = IntegralNewVariablePostprocessor
    variable = group5
    outputs = 'console exodus'
  [../]
  [./group6_current]
    type = IntegralNewVariablePostprocessor
    variable = group6
    outputs = 'console exodus'
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
    outputs = 'exodus console'
  [../]
[]

[Outputs]
  perf_graph = true
  [./exodus]
    type = Exodus
    execute_on = 'final'
  [../]
[]

[Debug]
  show_var_residual_norms = true
[]

[ICs]
#   [./temp_ic]
#     type = ConstantIC
#     variable = temp
#     value = ${ini_temp}
#   [../]
#   [./group1_ic]
#     type = ConstantIC
#     variable = group1
#     value = 1
#   [../]
#   [./group2_ic]
#     type = ConstantIC
#     variable = group2
#     value = 1
#   [../]
[]
