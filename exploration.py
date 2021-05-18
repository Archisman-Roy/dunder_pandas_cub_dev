import sys
import pandas_cub as pdc
import numpy as np
import pandas as pd
print('-------------------------')
print('Path of Python executable: ')
print('-------------------------')
print(sys.executable)
print('-------------------------')
print('PATH variable where Python searches for libraries')
print('-------------------------')
print(sys.path)
print('-------------------------')
print('Pandas cub and pandas version')
print('-------------------------')
print(pdc.__version__)
print('-------------------------')
print(pd.__version__)
print('-------------------------')
print('Create and load data')
print('-------------------------')
name = np.array(['Penelope', 'Niko', 'Eleni'])
state = np.array(['Texas', 'California', 'Texas'])
height = np.array([3.6, 3.5, 5.2])
school = np.array([True, False, True])
weight = np.array([45, 40, 130])
data = {'name': name, 'state': state, 'height': height, 
        'school': school, 'weight': weight}
df = pdc.DataFrame(data)
print(df)
print('-------------------------')