flow_velocity=.0012 # cm/s
pre_flow_velocity=.0012
nt_scale=1e5     # neutron flux scaling factor
ini_temp=923     # initial temp
diri_temp=923    # dirichlet BC temp
struc_diri_temp=1050

[GlobalParams]
  num_groups = 6
  num_precursor_groups = 8
  temperature = temp
  group_fluxes = 'group1 group2 group3 group4 group5 group6'
  pre_concs = 'pre1 pre2 pre3 pre4 pre5 pre6 pre7 pre8'
  power = 100  # MW
  use_exp_form = false
  sss2_input = true
  account_delayed = true
  alpha = 1
[]

[Mesh]
  file = 'mc-paper-mesh.msh'
[../]

[Nt]
  var_name_base = group
  vacuum_boundaries = 'fuel_bottom struc_bottom fuel_top struc_top outer'
  eigen = true
  pre_blocks = 'fuel'
  temp_scaling = 1e-9
[]

[Precursors]
  [./pres]
    var_name_base = pre
    block = 'fuel'
    outlet_boundaries = 'fuel_top'
    prec_scale = 1
    constant_velocity_values = true
    u_def = 0
    v_def = ${pre_flow_velocity}
    w_def = 0
    nt_exp_form = false
    family = MONOMIAL
    order = CONSTANT
    transient = false
    eigen = true
    # jac_test = true
  [../]
[]

[Kernels]
  # Temperature
  [./temp_cond]
    type = MatDiffusion
    variable = temp
    D_name = 'k'
  [../]
  [./temp_source]
    type = FissionHeatSource
    tot_fissions = tot_fissions
    variable = temp
  [../]
  # [./temp_advection_fuel]
  #   type = ConservativeTemperatureAdvection
  #   velocity = '0 ${flow_velocity} 0'
  #   variable = temp
  #   block = 'fuel'
  # [../]
  [./temp_advection_fuel]
    type = INSADTemperatureAdvection
    velocity = '0 ${flow_velocity} 0'
    variable = temp
    block = 'fuel'
  [../]
  [./temp_advection_supg_fuel]
    type = INSADTemperatureAdvectionSUPG
    velocity = '0 ${flow_velocity} 0'
    variable = temp
    block = 'fuel'
  [../]
[]

[AuxVariables]
  [./Qf]
    family = MONOMIAL
    order = CONSTANT
  [../]
  [./diffus_temp]
    family = MONOMIAL
    order = CONSTANT
  [../]
  [./diffus_resid]
    family = LAGRANGE
    order = FIRST
  [../]
  [./src_resid]
    family = LAGRANGE
    order = FIRST
  [../]
  [./bc_resid]
    family = LAGRANGE
    order = FIRST
  [../]
  [./tot_resid]
    family = LAGRANGE
    order = FIRST
  [../]
[../]

[AuxKernels]
  [./Qf]
    type = FissionHeatSourceAux
    variable = Qf
    tot_fissions = tot_fissions
  [../]
  [./diffus_temp]
    type = MatDiffusionAux
    variable = diffus_temp
    diffuse_var = temp
    prop_name = 'k'
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
    velocity = '0 -${flow_velocity} 0'
  [../]
[]

[Executioner]
  # type = NonlinearEigen
  # free_power_iterations = 8
  # # source_abs_tol = 1e-12
  # # source_rel_tol = 1e-8
  # output_after_power_iterations = true


  type = InversePowerMethod
  max_power_iterations = 100
  xdiff = 'group1diff'

  bx_norm = 'bnorm'
  k0 = 1.0
  pfactor = 1e-2
  # l_max_its = 200
  Chebyshev_acceleration_on = True
  # eig_check_tol = 1e-10
  # sol_check_tol = 1e-10

  solve_type = 'PJFNK'
  # solve_type = 'NEWTON'
  petsc_options = '-snes_converged_reason -ksp_converged_reason -snes_linesearch_monitor'
  # petsc_options_iname = '-pc_type -sub_pc_type'
  # petsc_options_value = 'asm lu'
[]

[Preconditioning]
  [./SMP]
    type = SMP
    # full = true
  [../]
[]

[Postprocessors]
  [./bnorm]
    type = ElmIntegTotFissNtsPostprocessor
    group_fluxes = 'group1 group2 group3 group4 group5 group6'
    execute_on = linear
  [../]
  [./tot_fissions]
    type = ElmIntegTotFissPostprocessor
    execute_on = linear
  [../]
  [./group1norm]
    type = ElementIntegralVariablePostprocessor
    variable = group1
    execute_on = linear
  [../]
  [./group2norm]
    type = ElementIntegralVariablePostprocessor
    variable = group2
    execute_on = linear
  [../]
  [./group1max]
    type = NodalMaxValue
    variable = group1
    execute_on = timestep_end
  [../]
  [./group2max]
    type = NodalMaxValue
    variable = group2
    execute_on = timestep_end
  [../]
  [./group1diff]
    type = ElementL2Diff
    variable = group1
    execute_on = 'linear timestep_end'
    use_displaced_mesh = false
  [../]
[]

[Outputs]
  perf_graph = true
  [./out]
    type = Exodus
    execute_on = 'timestep_end'
  [../]
[]

[Debug]
  show_var_residual_norms = true
[]

# [ICs]
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
# []
