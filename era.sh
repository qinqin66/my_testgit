#!/usr/bin/env python
from ecmwfapi import ECMWFDataServer
import numpy as np
import pandas as pd
server = ECMWFDataServer(url="https://api.ecmwf.int/v1",key="2ac51dfac88441447b19e2c32d364f0a",email="201921051022@mail.bnu.edu.cn")
day = pd.date_range('2005/11/30','2006/01/01').strftime('%Y%m%d')
for idata in range(len(day)):
	server.retrieve({
		'dataset' : "interim",
		'step'    : "0",
		'stream'  : "oper",
		'number'  : "all",
		'levtype' : "pl",
		'levelist': "10/20/30/50/70/100/125/150/200/250/300/350/400/450/500/550/600/650/700/750/800/850/900/925/950/975/1000",
		'date'    : day[idata],
		'time'    : "00/06/12/18",
		'origin'  : "all",
		'type'    : "an",
		'param'   : "129.128/133.128/131.128/132.128/130.128/157.128",
		'grid'    : "0.75/0.75",
		'target'  : "/mnt/f/data/era_pl/ERA-Int_pl_"+day[idata]+".grib"
       		})

