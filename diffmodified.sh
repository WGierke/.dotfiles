CHANGES=$(git status | grep modified: | awk '{split($0,a," "); print a[2]}')
clear
for i in $CHANGES
do
	echo $i
	diffuse $i
done