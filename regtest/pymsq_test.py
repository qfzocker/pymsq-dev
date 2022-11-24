#!/usr/bin/env python3

from PyMSQ import msq
import numpy as np
import time

gmap, meff, gmat, group, _ = msq.example_data()

print(" * Original group info ...")
print(group)

# change first 130 animals to M
group.iloc[0:130, 0] = "M"
print(" * Changed group info ...")
print(group)

# genetic map
print(" * Original genetic map ...")
print(gmap)

print(" * Insert additional column to map ...")
gmap.insert(4, "group2", gmap.iloc[:, 3], True)
print(gmap)

print(" * Allele substitution effects ...")
print(meff)

print(" * Phased genotypes ...")
print(gmat)

print(" * Data checks ...")
index_wt = [1, 1, 1]
start = time.time()
data = msq.Datacheck(gmap=gmap, meff=meff, gmat=gmat, group=group,
                             indwt=index_wt, progress=True)
print('Time taken: ', round(time.time() - start, 2), 'secs')

