#!/usr/local/plan9/bin/rc

ifs='
'

matches=`{>[2]/dev/null git ls-files |grep $"*}
switch ($#matches) {
	case 1
		B $matches(1)
	case *
		echo '-------- f '^$"*^' --------'
		for (match in $matches) {
			echo $match
		}
}
