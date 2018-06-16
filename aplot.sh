#!/bin/bash
# Thanks to http://mywiki.wooledge.org/BashFAQ & the guys on #bash Freenode IRC

: <<"EOF"
shopt -s globstar
opwd=$(pwd)
exists() { [[ -e $1 ]]; }

for i in **/
do
	cd "$i" || continue
	if exists ./*.json
	then
		echo Processing directory $i
		svg=$(echo "${i%/}" | tr / _).svg
		test -s "$opwd"/"$svg" ||
		"$opwd"/plot.sh | gnuplot > "$opwd"/"$svg"
	fi
	cd "$opwd" || exit
done
EOF

./plot.sh | gnuplot > x.svg
#google-chrome x.svg
