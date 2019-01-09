from subprocess import call
import sys

ex="/home/smpark/projects/SCALE-6.2.2/bin/scalerte"
file_root = sys.argv[1]
start_temp = int(sys.argv[2])
end_temp = int(sys.argv[3])

temp_range = range(start_temp, end_temp + 100, 100)

for temp in temp_range:
    call([ex, file_root + "_" + str(temp) + ".inp"])
