
import subprocess
import shlex

subprocess.run(["chmod", "+x", "save_data.sh"])
subprocess.call(shlex.split(f"./save_data.sh {opt.tag} "), stderr=0)