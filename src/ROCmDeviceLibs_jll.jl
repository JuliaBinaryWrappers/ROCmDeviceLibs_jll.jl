# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule ROCmDeviceLibs_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("ROCmDeviceLibs")
JLLWrappers.@generate_main_file("ROCmDeviceLibs", UUID("873c0968-716b-5aa7-bb8d-d1e2e2aeff2d"))

end  # module ROCmDeviceLibs_jll
