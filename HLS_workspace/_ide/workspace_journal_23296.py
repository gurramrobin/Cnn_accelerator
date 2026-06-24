# 2026-06-11T17:14:52.046121400
import vitis

client = vitis.create_client()
client.set_workspace(path="HLS_workspace")

vitis.dispose()

