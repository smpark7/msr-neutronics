flow_velocity=112 # cm/s
pre_flow_velocity=112
nt_scale=1e-15     # neutron flux scaling factor
ini_temp=973     # initial temp
diri_temp=973    # dirichlet BC temp
struc_diri_temp=1050
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
  gravity = '0 -981 0'
  # alpha = 1
  # eigen = true
[]

[Mesh]
  file = 'fuel-blanket-boussinesq.e'
[../]

[MeshModifiers]
  [./bottom_left]
    type = AddExtraNodeset
    new_boundary = corner
    coord = '0 0'
  [../]
[]

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
    order = SECOND
    family = LAGRANGE
    scaling = 1e-6
  [../]
  [./ux]
    family = LAGRANGE
    order = SECOND
  [../]
  [./uy]
    family = LAGRANGE
    order = SECOND
    scaling = 1e-3
  [../]
  [./uz]
    family = LAGRANGE
    order = SECOND
  [../]
  [./p]
    family = LAGRANGE
    order = FIRST
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
    block = 'fuel'
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

  # Boussinesq
  [./mass]
    type = INSMass
    variable = p
    u = ux
    v = uy
    w = uz
    p = p
    block = 'blanket'
  [../]
  [./x_time_deriv]
    type = INSMomentumTimeDerivative
    variable = ux
    block = 'blanket'
  [../]
  [./y_time_deriv]
    type = INSMomentumTimeDerivative
    variable = uy
    block = 'blanket'
  [../]
  [./z_time_deriv]
    type = INSMomentumTimeDerivative
    variable = uz
    block = 'blanket'
  [../]
  [./x_momentum_space]
    type = INSMomentumLaplaceForm
    variable = ux
    u = ux
    v = uy
    w = uz
    p = p
    component = 0
    block = 'blanket'
  [../]
  [./y_momentum_space]
    type = INSMomentumLaplaceForm
    variable = uy
    u = ux
    v = uy
    w = uz
    p = p
    component = 1
    block = 'blanket'
  [../]
  [./z_momentum_space]
    type = INSMomentumLaplaceForm
    variable = uz
    u = ux
    v = uy
    w = uz
    p = p
    component = 2
    block = 'blanket'
  [../]
  [./tempAdvectionDiffusion]
    type = INSTemperature
    variable = temp
    u = ux
    v = uy
    w = uz
    block = 'blanket'
  [../]
  [./buoyancy_x]
    type = INSBoussinesqBodyForce
    variable = ux
    dT = deltaT
    component = 0
    temperature = temp
    block = 'blanket'
  [../]
  [./buoyancy_y]
    type = INSBoussinesqBodyForce
    variable = uy
    dT = deltaT
    component = 1
    temperature = temp
    block = 'blanket'
  [../]
  [./buoyancy_z]
    type = INSBoussinesqBodyForce
    variable = uz
    dT = deltaT
    component = 2
    temperature = temp
    block = 'blanket'
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
    prop_names = 'cp alpha temp_ref'
    prop_values = '1355 0 0'
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
  [./mu_blanket]
    type = ParsedMaterial
    f_name = mu
    function = 'rho * exp(3689 / temp) * 5.55e-8 * 10000'
    material_property_names = 'rho'
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
  [./temp]
    boundary = 'fuel_bottom blanket_bottom'
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
  [./ux_dirichlet]
    type = DirichletBC
    boundary = 'blanket_top blanket_bottom inner outer'
    variable = ux
    value = 0
  [../]
  [./uy_dirichlet]
    type = DirichletBC
    boundary = 'blanket_top blanket_bottom inner outer'
    variable = uy
    value = 0
  [../]
  [./uz_dirichlet]
    type = DirichletBC
    boundary = 'blanket_top blanket_bottom inner outer'
    variable = uz
    value = 0
  [../]
  [./p_zero]
    type = DirichletBC
    boundary = corner
    variable = p
    value = 0
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
    optimal_iterations = 20
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
  [./ux_ic]
    type = ConstantIC
    variable = ux
    value = 0
  [../]
  [./uy_ic]
    type = ConstantIC
    variable = uy
    value = 0
  [../]
  [./uz_ic]
    type = ConstantIC
    variable = uz
    value = 0
  [../]
[]
