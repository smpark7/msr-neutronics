flow_velocity=0 # cm/s
nt_scale=1e13     # neutron flux scaling factor
ini_temp=930     # initial temp
diri_temp=1030    # dirichlet BC temp

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
  file = 'cyl_nt_test_mesh.e'
[../]

[Problem]
  coord_type = RZ
  #rz_coord_axis = Y
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
  [./pres]
    var_name_base = pre
    block = 'fuel'
    outlet_boundaries = 'top bottom'
    u_def = 0
    v_def = ${flow_velocity}
    w_def = 0
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
    velocity = '0 ${flow_velocity} 0'
    variable = temp
    block = 'fuel'
  [../]
[]

[BCs]
  [./vacuum_group1]
    type = VacuumConcBC
    boundary = 'bottom top outer'
    variable = group1
  [../]
  [./vacuum_group2]
    type = VacuumConcBC
    boundary = 'bottom top outer'
    variable = group2
  [../]
  #[./vacuum_group1]
  #  type = NeumannBC
  #  boundary = 'bottom top outer'
  #  variable = group1
  #  value = '0'
  #[../]
  #[./vacuum_group2]
  #  type = NeumannBC
  #  boundary = 'bottom top outer'
  #  variable = group2
  #  value = '0'
  #[../]
  #[./temp_diri_cg]
  #  boundary = 'outer'
  #  type = FunctionDirichletBC
  #  function = 'temp_bc_func'
  #  variable = temp
  #[../]
  [./temp_diri_cg]
    boundary = 'outer'
    type = DirichletBC
    variable = temp
    value = '930'
  [../]
  [./temp_advection_outlet]
    boundary = 'top'
    type = TemperatureOutflowBC
    variable = temp
    velocity = '0 ${flow_velocity} 0'
  [../]
  #[./temp_diri_top]
  # boundary = 'top'
  # type = DirichletBC
  # variable = temp
  # value = '930'
  #[../]
  [./temp_diri_bot]
   boundary = 'bottom'
   type = DirichletBC
   variable = temp
   value = '930'
  [../]
[]

[Functions]
  [./temp_bc_func]
    type = ParsedFunction
    value = '930'
  [../]
[]

[Materials]
  [./fuel]
    type = GenericMoltresMaterial
#    property_tables_root = '../../twod_axi_coupled/data3/newt_msre_fuel_'
    property_tables_root = '../../twod_axi_coupled/data5/newt_msre_fuel_'
#    property_tables_root = '../input-data/cyl_nt_test/data3/cyl_fuel_'
    interp_type = 'spline'
    block = 'fuel'
    prop_names = 'k cp'     # conductivity, capacity
    prop_values = '.01014 1355'   # W cm-1 K-1, J kg-1 K-1
  [../]
  [./rho_fuel]
    type = DerivativeParsedMaterial
    f_name = rho
    function = '(4983.56 - .882 * temp) * .000001'    # kg cm-3
    args = 'temp'
    derivative_order = 1
    block = 'fuel'
  [../]
[]

[Executioner]
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
    dt = 1e-5
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
    file_base = 'cyly'
    execute_on = 'timestep_end'
  [../]
[]
