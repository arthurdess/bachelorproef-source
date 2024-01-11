import sys

findString = sys.argv[1]
replaceString = sys.argv[2]
file = sys.argv[3]
  
with open(file, 'r') as f:
    data = f.read()
    data = data.replace(findString, replaceString)
  
with open(file, 'w') as f:
    f.write(data)