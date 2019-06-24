pre_flow_velocity=112.75
pre_scale=1e-4    # precursor scaling factor

[GlobalParams]
  num_groups = 0
  num_precursor_groups = 8
  temperature = temp
  use_exp_form = false
  group_fluxes = ''
  sss2_input = true
  pre_concs = 'pre1 pre2 pre3 pre4 pre5 pre6 pre7 pre8'
  # account_delayed = true
[]

[Mesh]
  type = GeneratedMesh
  dim = 2
  nx = 1
  ny = 600
  xmax = 112.75
  ymax = 188
  elem_type = QUAD
[../]

[Variables]
  [./temp]
    order = FIRST
    family = LAGRANGE
    scaling = 1
  [../]
[]

[Precursors]
  [./core]
    var_name_base = pre
    outlet_boundaries = 'top'
    constant_velocity_values = true
    u_def = 0
    v_def = ${pre_flow_velocity}
    w_def = 0
    nt_exp_form = false
    family = MONOMIAL
    order = CONSTANT
    loop_precs = true
    multi_app = loopApp
    is_loopapp = true
    inlet_boundaries = 'bottom'
    scaling = ${pre_scale}
  [../]
[]

[Kernels]
  [./temp_time_derivative]
    type = MatINSTemperatureTimeDerivative
    variable = temp
  [../]
[]

[Functions]
  [./velFunc]
    type = ParsedFunction
    value = '(2 / 112.75 / 10) * (112.75 ^ 2 - (x ^ 2)) + 101.475'
  [../]
  [./nullFunc]
    type = ParsedFunction
    value = '0'
  [../]
[]

[Controls]
  [./flowControl]
    type = RealFunctionControl
    parameter = '*/*/vv'
    function = velFunc
    execute_on = 'initial timestep_begin'
  [../]
[]

[Materials]
  [./fuel]
    type = GenericMoltresMaterial
    property_tables_root = '../../input-data/mc-paper/xs-data/data/mc_paper_fuel_'
    interp_type = 'spline'
    prop_names = 'cp'
    prop_values = '1355'
  [../]
  [./rho_fuel]
    type = DerivativeParsedMaterial
    f_name = rho
    function = '(4983.56 - .882 * temp) * .000001'    # kg cm-3
    args = 'temp'
    derivative_order = 1
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
  [./SMP]
    type = SMP
    full = true
  [../]
[]

[Outputs]
  perf_graph = true
  print_linear_residuals = true
  [./exodus]
    type = Exodus
    file_base = 'sub'
    execute_on = 'timestep_begin'
  [../]
[]

[Debug]
  show_var_residual_norms = true
[]
