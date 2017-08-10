#!/bin/bash

JAVA="/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java -Xmx12g"

if [ ! -f "models.csv" ] ; then
	echo "Number;Breadth;Depth;RoleGroups;RelationshipTypes;Concepts" > "models.csv"	
fi

for i in {5,10,15,20,25} ; do #,10
	#Configure Generator
	b="2";
	d="1";
	rg=`expr $i / 2 `;
	rst="0";
	#Create Statistics
	if [ -d "$i" ] ; then
		echo "Continuing process..."
	else
		mkdir $i;
		echo "Real;User;CPU%;System;Exit" > "$i/benchmark.csv"
		echo "Real;User;CPU%;System;Exit" > "$i/transform.csv"
		echo "Real;User;CPU%;System;Exit" > "$i/reason.csv"
	fi
		
	# Generate Benchmark
	echo "Generate model with n=$i" ;
	for j in {1..100} ; do
		if [ ! -f "$i/test$i-$j.crom" ] ; then
			echo "$i/test$i-$j.crom" ;
			/usr/bin/time -o "$i/benchmark.csv" -a -f "%e;%U;%P;%S;%x" $JAVA -jar org.rosi.crom.benchmark.jar -s$j -n$i -b$b -d$d -rg$rg -rst$rst "$i/test$i-$j.crom" ;
		fi		
	done
        c=`$JAVA -jar org.rosi.crom.benchmark.jar -n$i -b$b -d$d -rg$rg -rst$rst "tmp.crom"`
	echo "$i;$b;$d;$rg;$rst;$c" >> "models.csv"	

	# Transform 
	echo "Transform model with n=$i" ;
	for f in `ls $i/*.crom` ; do
		if [ ! -f "${f/.crom/.owl}" ] ; then	
			echo "${f/.crom/.owl}" ;
			/usr/bin/time -o "$i/transform.csv" -a -f "%e;%U;%P;%S;%x" $JAVA -jar "org.rosi.crom.toformal.cli.jar" -towl $f
		fi
	done

	# Reasoner
	echo "Reason on model with n=$i" ;
	for f in `ls $i/*.owl` ; do
		if [ ! -f "${f/.owl/.res}" ] ; then
			echo "${f/.owl/.res}"
			/usr/bin/time --quiet -o "$i/reason.csv" -a -f "%e;%U;%P;%S;%x" $JAVA -jar "JConHT.jar" $f
			echo "$f;$?" > "${f/.owl/.res}"
		fi
	
	done

done
