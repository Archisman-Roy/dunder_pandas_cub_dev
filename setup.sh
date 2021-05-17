echo -n "Enter 1 for conda, 2 for virtualenv: "
read VAR

if [[ $VAR -eq 1 ]]
then
  echo "Taking the conda path"
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
else
  echo "Taking the visrtualenv path"
  #Install if required
  pip install virtualenv
  #print version
  echo $(virtualenv --version)
  #create directory
  mkdir /home/runner/dunderpandascubdev/python-virtual-environments 
  cd /home/runner/dunderpandascubdev/python-virtual-environments
  echo $(pwd)
  #get Python3
  python3 -m venv pandas_cub
  #activate
  source /home/runner/dunderpandascubdev/python-virtual-environments/pandas_cub/bin/activate
  #install required libraries

  #deactivate
  #deactivate
fi