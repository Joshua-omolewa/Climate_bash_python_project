#!/usr/bin/env python3

#This python script combine three pandas data frames

import pandas as pd
import glob
import os

#print (os.getcwd()) #for confirmation script is running in correct directory

"""
Importing the data file from the input folder
#glob. glob() method returns a list of files or folders that matches the path specified in the pathname argument
"""
input_data = sorted(glob.glob(os.environ['INPUT_FOLDER']+'/*.csv' ))
#print(input_data) to ensure the file paths for the input folders are correct



#creating a list of pandas data frame to store the csv object for more transformation
csv_data=[]
for data in input_data:
    data_frame = pd.read_csv(data)
    csv_data.append(data_frame)

"""
Concatenating the data frames in the csv_data list, axis =0 is to concatenate data frames along the row, 
ignore_index= True is to  prevent the use of  index values along the concatenation axis i.e. exluding the use default pandas axis along the 
row and creating a new axis when combining files. This prevent axis values duplication in pandas frame
"""

combine_all_csv_files = pd.concat(csv_data,axis=0,ignore_index=True)



"""
ouputing the concatenated data as a csv file with a specific file name, index =false is to  ignore pandas default index when outputting the file 
header=False is to remove pandas default headers
"""
done=combine_all_csv_files.to_csv(os.environ['OUTPUT_FOLDER']+'/all_years.csv', index=False)