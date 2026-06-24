# 2026-06-11T10:12:24.238319700
import vitis

client = vitis.create_client()
client.set_workspace(path="HLS_workspace")

comp = client.create_hls_component(name = "conv_ip",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="conv_ip")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")

comp = client.create_hls_component(name = "relu_ip",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="relu_ip")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")

vitis.dispose()

