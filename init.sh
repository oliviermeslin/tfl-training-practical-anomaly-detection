# Install conda
apt-get update
apt-get install wget bzip2

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh -b -p /opt/miniconda

export PATH=/opt/miniconda/bin:$PATH
conda -V

# Restart terminal

# Install jupyter dependencies
conda install -c conda-forge notebook rise jupyter_contrib_nbextensions jupyter_nbextensions_configurator
conda install -c conda-forge ffmpeg
python ./configure_spellcheck_dict.py
jupyter nbextension enable spellchecker/main
jupyter nbextension enable equation-numbering/main

pip install hide_code
jupyter nbextension install --py hide_code
jupyter nbextension enable --py hide_code
jupyter serverextension enable --py hide_code

# Install dependencies
cd tfl-training-practical-anomaly-detection
pip install -e .
