cd tfl-training-practical-anomaly-detection

# uv init
# uv add -r requirements.txt

uv sync 
cd ..
mkdir -p .vscode
echo '{"python.defaultInterpreterPath": ".tfl-training-practical-anomaly-detection/.venv/bin/python"}' >> .vscode/settings.json