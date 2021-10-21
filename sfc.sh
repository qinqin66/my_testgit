#!/usr/bin/env python
from ecmwfapi import ECMWFDataServer
import numpy as np
import pandas as pd
server = ECMWFDataServer(url="https://api.ecmwf.int/v1",key="2ac51dfac88441447b19e2c32d364f0a",email="201921051022@mail.bnu.edu.cn")
day = pd.date_range('2005/11/30','2006/01/01').strftime('%Y%m%d')
for idata in range(len(day)):
	server.retrieve({
		'class'   : "ei",
        	'dataset' : "interim",
	  	'expver'  : "1",
	  	'step'    : "0",
	  	'stream'  : "oper",
	  	'number'  : "all",
	  	'levtype' : "sfc",
	  	'date'    : day[idata],
	  	'time'    : "00/06/12/18",
	  	'origin'  : "all",
	  	'type'    : "an",
	  	'param'   : "134.128/151.128/235.128/167.128/168.128/165.128/166.128/139.128/170.128/183.128/236.128/39.128/40.128/41.128/42.128/34.128/141.128/31.128",
	  	'grid'    : "0.75/0.75",
	  	'target'  : "/mnt/f/data/era_sst/ERA-Int_sfc_"+day[idata]+".grib"
  })

