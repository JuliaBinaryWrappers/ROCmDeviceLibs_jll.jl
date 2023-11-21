export bitcode_path

using Zlib_jll
JLLWrappers.@generate_wrapper_header("ROCmDeviceLibs")
JLLWrappers.@declare_file_product(bitcode_path)
function __init__()
    JLLWrappers.@generate_init_header(Zlib_jll)
    JLLWrappers.@init_file_product(
        bitcode_path,
        "amdgcn/bitcode",
    )

    JLLWrappers.@generate_init_footer()
end
