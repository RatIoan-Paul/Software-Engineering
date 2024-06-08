method Abs(x: int) returns (y: int)
ensures y>=0;
{
    if(x > 0)
    { returns x; }
    else
    { returns -x; }
}

method Triple (x: int ) returns (r: int)
{
if x == 0{
r := 0;
} else {
var y := 2 * x;
r := x + y;
}
assert r == 3 * x;
}

method Main ()
{
    x: int := Triple(5);
    z: int := Abs(x);
    assert z<=x;
    print z;
}