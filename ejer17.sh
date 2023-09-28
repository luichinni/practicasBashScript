#!/bin/bash
for archivo in $(ls);
do
	echo "$(echo "$archivo" | tr -d 'A' | tr -d 'a' | tr '[:upper:][:lower:]' '[:lower:][:upper:]')"
done
exit 0
