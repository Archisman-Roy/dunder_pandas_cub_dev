#Create a folder for mini-conda
mkdir -p /home/runner/miniconda3
#Download
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /home/runner/miniconda3/miniconda.sh
#Install
bash /home/runner/miniconda3/miniconda.sh -b -u -p /home/runner/miniconda3
#Remove the downloaded file
rm -rf /home/runner/miniconda3/miniconda.sh
#Set path file
export PATH="/home/runner/miniconda3/bin:$PATH"
#Print Conda version
echo $(conda --version)
#Set envioronment variable
conda env create -f environment.yml