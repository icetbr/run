import subprocess
p = subprocess.Popen(['/home/ddv/.nvm/versions/node/v23.8.0/bin/node', '/home/ddv/projects/projects/comparing-testing-libraries/run/echoJs.js'], stdout=subprocess.PIPE)
out = p.stdout.read()
print(out)
