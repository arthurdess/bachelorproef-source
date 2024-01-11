import sys

with open('param.json', 'r') as f:
    data = f.read()
    data = data.replace('ALWAYSONINEBOOL', 'false')
    data = data.replace('HTTPSONLYBOOL', 'true')
    data = data.replace('LINUXFXVERSION', 'DOTNETCORE|7.0')
  
with open('param.json', 'w') as f:
    f.write(data)