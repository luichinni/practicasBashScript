#!/bin/bash
for i in {1..100}; do
	echo "$i => $(($i * $i))"
done
exit 0
