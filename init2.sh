cd tfl-training-practical-anomaly-detection

# uv init
# uv add -r requirements.txt

wget -qO - https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt install -y git-lfs
git lfs install
git lfs pull

uv sync 
cd ..
mkdir -p .vscode
echo '{"python.defaultInterpreterPath": ".tfl-training-practical-anomaly-detection/.venv/bin/python"}' >> .vscode/settings.json


