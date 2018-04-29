from  subprocess import Popen, PIPE
import re
# import matplotlib.pyplot as plt

#kind 4
print("./Projekt 1-kind4.exe")
errors = []
for i in range(2,1000,5):
    if (i-2)%100 == 0:
        print(i)
    cmd = f"./Projekt 1-kind4.exe" #here
    proc = Popen([cmd, str(i)], stdout=PIPE)
    result = re.sub('[^0123456789.E+-]', '', str(proc.stdout.read()))
    errors.append(result)
with open('kind4.txt', 'w') as f:
    print("\n".join(errors), file=f)

print("./Projekt 1-kind8.exe")
errors = []
for i in range(2,1000,5):
    if (i-2)%100 == 0:
        print(i)
    cmd = f"./Projekt 1-kind8.exe" #here
    proc = Popen([cmd, str(i)], stdout=PIPE)
    result = re.sub('[^0123456789.E+-]', '', str(proc.stdout.read()))
    errors.append(result)
with open('kind8.txt', 'w') as f:
    print("\n".join(errors), file=f)

print("./Projekt 1-kind16.exe")
errors = []
for i in range(2,1000,5):
    if (i-2)%100 == 0:
        print(i)
    cmd = f"./Projekt 1-kind16.exe" #here
    proc = Popen([cmd, str(i)], stdout=PIPE)
    result = re.sub('[^0123456789.E+-]', '', str(proc.stdout.read()))
    errors.append(result)
with open('kind16.txt', 'w') as f:
    print("\n".join(errors), file=f)