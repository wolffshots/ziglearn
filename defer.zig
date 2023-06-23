const expect = @import("std").testing.expect;

test "defer" {
    var x: i16 = 5;
    {
        defer x += 2;
        try expect(x == 5);
    }
    try expect(x == 7);
}

test "multi defer" { // executed in reverse order
    var x: f32 = 5;
    {
        defer x += 2; // executed second
        defer x /= 2; // executed first
    }
    try expect(x == 4.5);
}
