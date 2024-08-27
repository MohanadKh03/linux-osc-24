#!/usr/bin/bash
for file in *; do
	file_extension=${file##*.}
	if [[ $file_extension == 'txt' ]]
		then
			prefix=$(echo "$file" | cut -c1-4)
			if [[ $prefix != 'old_' ]]
				then
					mv $file 'old_'$file
			fi
	fi
done
