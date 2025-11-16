cd tfl-training-practical-anomaly-detection

# Create a virtual environment with uv specifying Python 3.11
uv venv --python 3.11 myenv

# Activate the virtual environment
source myenv/bin/activate

# Install packages into the created venv using uv pip or uv add
uv pip install -r requirements.txt

cd ..
mkdir -p .vscode
echo '{"python.defaultInterpreterPath": ".tfl-training-practical-anomaly-detection/myenv/bin/python"}' >> .vscode/settings.json