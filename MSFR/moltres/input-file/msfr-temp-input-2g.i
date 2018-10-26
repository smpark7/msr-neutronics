flow_velocity=120 # cm/s
nt_scale=1e13     # neutron flux scaling factor
ini_temp=1000     # initial temp
diri_temp=1030    # dirichlet BC temp

[GlobalParams]
  num_groups = 2
  num_precursor_groups = 8
  use_exp_form = false
  group_fluxes = 'group1 group2'
  temperature = temp
  sss2_input = true
  pre_concs = 'pre1 pre2 pre3 pre4 pre5 pre6 pre7 pre8'
  account_delayed = true
[]

[Mesh]
  file = 'msfr_fuel_core_3d_reduced.e'

  #block_id = '1 2'
  #block_name = 'fuel struc'

  #boundary_id = '22 21 23 24 25'
  #boundary_name = 'fuel_bottom fuel_top outer_wall struc_bottom struc_top'
[../]

[Problem]
  #coord_type = RZ
  #rz_coord_axis = Y
[]

[Variables]
  [./group1]
    order = FIRST
    family = LAGRANGE
    initial_condition = 1e6
    scaling = 1e4
  [../]
  [./group2]
    order = FIRST
    family = LAGRANGE
    initial_condition = 1e6
    scaling = 1e4
  [../]
  [./temp]
    initial_condition = ${ini_temp}
    scaling = 1e-4
  [../]
[]

[Precursors]
  [./pres]
    var_name_base = pre
    block = 'fuel'
    outlet_boundaries = 'fuel_top'
    u_def = 0
    v_def = 0
    w_def = ${flow_velocity}
    nt_exp_form = false
    family = MONOMIAL
    order = CONSTANT
    # jac_test = true   # jacobian test
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
    block = 'fuel'
  [../]
  [./delayed_group1]
    type = DelayedNeutronSource
    variable = group1
    block = 'fuel'
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
    block = 'fuel'
  [../]
  [./inscatter_group2]
    type = InScatter
    variable = group2
    group_number = 2
  [../]
  [./delayed_group2]
    type = DelayedNeutronSource
    variable = group2
    block = 'fuel'
    group_number=2
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
    block = 'fuel'
  [../]
  [./temp_diffusion]
    type = MatDiffusion
    D_name = 'k'
    variable = temp
  [../]
  [./temp_advection_fuel]
    type = ConservativeTemperatureAdvection
    velocity = '0 0 ${flow_velocity}'
    variable = temp
    block = 'fuel'
  [../]
[]

[BCs]
  [./vacuum_group1]
    type = VacuumConcBC
    boundary = 'fuel_bottom fuel_top struc_bottom struc_top outer_wall'
    variable = group1
  [../]
  [./vacuum_group2]
    type = VacuumConcBC
    boundary = 'fuel_bottom fuel_top struc_bottom struc_top outer_wall'
    variable = group2
  [../]
  [./temp_diri_cg]
    boundary = 'outer_wall fuel_bottom struc_bottom'
    type = FunctionDirichletBC
    function = 'temp_bc_func'
    variable = temp
  [../]
  [./temp_advection_outlet]
    boundary = 'fuel_top'
    type = TemperatureOutflowBC
    variable = temp
    velocity = '0 0 ${flow_velocity}'
  [../]
  #[./temp_diri_top]
  #  boundary = 'fuel_top'
  #  type = DirichletBC
  #  variable = temp
  #  value = '1030'
  #[../]
  #[./temp_diri_bot]
  #  boundary = 'fuel_bottom struc_bottom'
  #  type = DirichletBC
  #  variable = temp
  #  value = '1000'
  #[../]
[]

[Functions]
  [./temp_bc_func]
    type = ParsedFunction
    #value = '1000 * (.1 * z / 188 + 1)'
    value = '${ini_temp} - (${ini_temp} - ${diri_temp}) * tanh(t/1e-2)'
  [../]
[]

[Materials]
  [./fuel]
    type = GenericMoltresMaterial
    property_tables_root = '../input-data/fuelcore/data2/msfr_temp_fuel_'
    interp_type = 'spline'
    block = 'fuel'
    prop_names = 'k cp'     # conductivity, capacity
    prop_values = '.01014 1752'   # W cm-1 K-1, J kg-1 K-1
  [../]
  [./rho_fuel]
    type = DerivativeParsedMaterial
    f_name = rho
    function = '(4983.56 - .882 * temp) * .000001'    # kg cm-3
    args = 'temp'
    derivative_order = 1
    block = 'fuel'
  [../]
  [./struc]
    type = GenericMoltresMaterial
    property_tables_root = '../input-data/fuelcore/data2/msfr_temp_struc_'
    interp_type = 'spline'
    prop_names = 'k cp'
    prop_values = '.25 1560' 
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
  end_time = 1000000

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
  [./temp_fuel]
    type = ElementAverageValue
    variable = temp
    block = 'fuel'
    outputs = 'exodus console'
  [../]
  [./temp_struc]
    type = ElementAverageValue
    variable = temp
    block = 'struc'
    outputs = 'exodus console'
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
  # [./average_fission_heat]
  #   type = AverageFissionHeat
  #   nt_scale = ${nt_scale}
  #   execute_on = 'linear nonlinear'
  #   outputs = 'console'
  #   block = 'fuel'
  # [../]
[]

[Outputs]
  perf_graph = false
  print_linear_residuals = true
  [./exodus]
    type = Exodus
    file_base = 'msfr'
    execute_on = 'final'
  [../]
[]
