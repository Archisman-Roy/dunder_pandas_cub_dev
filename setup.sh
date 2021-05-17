#Create a folder for mini-conda
mkdir -p /home/runner/dunderpandascubdev/miniconda3
#Download
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /home/runner/dunderpandascubdev/miniconda3/miniconda.sh
#Install
bash /home/runner/dunderpandascubdev/miniconda3/miniconda.sh -b -u -p /home/runner/dunderpandascubdev/miniconda3
#Remove the downloaded file
rm -rf /home/runner/dunderpandascubdev/miniconda3/miniconda.sh
#Print disk usage
echo $(du -sh /home/runner/dunderpandascubdev/miniconda3)
#Set path file
export PATH="/home/runner/dunderpandascubdev/miniconda3/bin:$PATH"
#Print Conda version
echo $(conda --version)
#update conda 
conda update -n base -c defaults conda
#Print updated Conda version
echo $(conda --version)
#Set envioronment variable
conda env create -f environment.yml