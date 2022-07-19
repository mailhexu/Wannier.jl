module Wannier

using Requires

include("common/const.jl")
include("common/type.jl")
include("util/io.jl")

include("util/linalg.jl")
export get_recip_lattice, get_lattice
export orthonorm_lowdin, eyes_amn, rotate_mmn
export isunitary

include("util/kpoint.jl")
export get_kpoint_mappings

include("util/misc.jl")

include("bvector.jl")
export get_bvectors

include("model.jl")

include("spread.jl")
export Spread, pprint
export omega, omega_grad, center

include("io/w90.jl")
export read_win, read_wout, read_nnkp, write_nnkp
export read_amn, read_orthonorm_amn, read_mmn, read_eig
export read_seedname, read_unk, read_chk
export write_amn, write_mmn, write_eig, write_unk, write_chk
export read_w90_bands, write_w90_bands
export get_amn

include("io/model.jl")
export write_model

include("io/truncate.jl")
export truncate

include("io/cube.jl")

include("wannierize/max_localize.jl")
export max_localize

include("wannierize/disentangle.jl")
export disentangle

include("wannierize/opt_rotate.jl")
export opt_rotate, rotate_amn

include("wannierize/parallel_transport/parallel_transport.jl")
export parallel_transport

include("wannierize/split.jl")
export split_wannierize, split_unk, split_model

include("wannierize/constraint_center/max_localize.jl")
export max_localize_center

include("wannierize/constraint_center/disentangle.jl")
export disentangle_center

include("cli/main.jl")

include("interpolate/band.jl")

# function __init__()
#     @require Plots="91a5bcdd-55d7-5caf-9e0b-520d859cae80" begin
include("plot.jl")
export plot_band, plot_band!

# include("plot/parallel_transport.jl")
#     end
# end

end
