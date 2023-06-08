
import subprocess
import shlex

subprocess.run(["chmod", "+x", "save_data.sh"])
subprocess.call(shlex.split(f"./save_data.sh v0.2"), stderr=0)