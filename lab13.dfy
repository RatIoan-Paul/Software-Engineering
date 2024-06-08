method TripleA(x: int, y: int) 
    requires x == y
    ensures var z := x - y; z == 0
{
    var z := x - y;
    assert z == 0;
}
method TripleB() 
    ensures var x := 100; x == 100
{
    var x := 100;
    assert x == 100;
}
method TripleC(x: int) 
    requires 0 <= x < 100
    ensures var y := x + 1; 0 <= y <= 100
{
    var y := x + 1;
    assert 0 <= y <= 100;
}
