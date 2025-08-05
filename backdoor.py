from flask import Flask, request
import subprocess

app = Flask(__name__)

@app.route("/execute", methods=["POST"])
def execute_command():
    data = request.json
    if "command" in data:
        command = data["command"]
        try:
            output = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
            return {"status": "success", "output": output.decode()}, 200
        except subprocess.CalledProcessError as e:
            return {"status": "error", "output": e.output.decode()}, 400
    return {"status": "error", "message": "No command provided"}, 400

if __name__ == "__main__":
    app.run(port=3000)
