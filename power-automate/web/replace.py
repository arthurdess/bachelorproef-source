import sys

findString = sys.argv[1]
replaceString = sys.argv[2]
  
with open('param.json', 'r') as f:
    data = f.read()
    data = data.replace(findString, replaceString)
  
with open('param.json', 'w') as f:
    f.write(data)