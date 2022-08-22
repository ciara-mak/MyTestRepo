#!/usr/bin/bash
dir="$1"
if [ -d $dir ]; then
    echo -e "Checking disk usage in $dir\n"
else
    echo -e "$dir is not a directory!\n"
    exit 101
fi
echo "The heaviest subfolder of $dir is:"
top1=$(du /home/pyprep02 -d 1 2>/dev/null | sort -rn | head -n 2 | \
	 tail -n 1| cut -f 2)
disk=$(du /home/pyprep02 -d 1 2>/dev/null | sort -rn | head -n 2 | \
	 tail -n 1| cut -f 1)
echo -e "$top1 with disk usage of $disk"
