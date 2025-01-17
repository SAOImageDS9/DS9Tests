echo "Simple Image Access Options Tests"

testit () {
    echo "Testing $1"
    unset opt
    opt="$opt $1 -sleep 1"
}

doit () {
    eval ds9 -zscale fits/img.fits "$opt" -exit
    echo "PASSED"
    echo ""
}

echo
echo "*** command.sh ***"

tt="-sia cxc -header"
testit "$tt"
doit

tt="-sia cxc -sia sky fk4 -header"
testit "$tt"
doit

tt="-sia cxc -sia mast -header"
testit "$tt"
doit

tt="-sia cxc -sia sky fk4 -sia mast -header"
testit "$tt"
doit

tt="-sia cxc -sia current cxc -sia sky fk4 -sia mast -header"
testit "$tt"
doit
