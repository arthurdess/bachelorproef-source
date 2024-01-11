import sys

file = sys.argv[1]

with open(file, 'r') as f:
    data = f.read()
    data = data.replace('PIPSKUDEFAULT', 'Standard')
    data = data.replace('OSDISKTYPEDEFAULT', 'StandardSSD_LRS')
    data = data.replace('VMSIZEDEFAULT', 'Standard_DC2s_v2')
  
with open(file, 'w') as f:
    f.write(data)