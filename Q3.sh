
#!/bin/bash -x

echo "selling price:"
read sp

echo "cost price:"
read cp

result=$(( $sp - $cp ))

        echo "result= $result"

result_part=`echo $result $cp | awk '{print $1/$2}'`

        echo "$result_part"

result_percent=`echo $result_part 100 | awk '{print $1*$2}'`

	 echo $result_percent
