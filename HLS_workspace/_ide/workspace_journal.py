# 2026-06-16T15:26:57.024737600
import vitis

client = vitis.create_client()
client.set_workspace(path="HLS_workspace")

platform = client.create_platform_component(name = "kv260_platform",hw_design = "$COMPONENT_LOCATION/../../Vivado_workspace/cnn_accelerator/cnn_pipeline_accelerator.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0",architecture = "64-bit",compiler = "gcc")

platform = client.get_component(name="kv260_platform")
status = platform.build()

vitis.dispose()

