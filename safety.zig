// test "out of bounds" {
//     const a = [3]u8{ 1, 2, 3 };
//     var index: u8 = 5;
//     const b = a[index]; // panics with index out of bound
//     _ = b;
// }

test "out of bounds, no safety" {
    @setRuntimeSafety(false);
    const a = [3]u8{ 1, 2, 3 };
    var index: u8 = 5;
    const b = a[index]; // doesn't panic despite illegal index
    _ = b;
}
