#!/usr/bin/env python
from ecmwfapi import ECMWFDataServer
server = ECMWFDataServer(url="https://api.ecmwf.int/v1",key="2ac51dfac88441447b19e2c32d364f0a",email="201921051022@mail.bnu.edu.cn")

server.retrieve({
          'dataset' : "interim",
	  'step'    : "0",
	  'stream'  : "oper",
	  'number'  : "all",
	  'levtype' : "pl",
	  'levelist': "10/20/30/50/70/100/125/150/200/250/300/350/400/450/500/550/600/650/700/750/800/850/900/925/950/975/1000",
	  'date'    : "20090101/to/20090630",
	  'time'    : "00/06/12/18",
	  'origin'  : "all",
	  'type'    : "an",
	  'param'   : "129.128/133.128/131.128/132.128/130.128/157.128",
	  'grid'    : "0.25/0.25",
	  'target'  : "ERA-Int_pl_20090101_20090630.grib"
  })

