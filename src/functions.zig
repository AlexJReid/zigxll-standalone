const std = @import("std");
const xll = @import("xll");
const ExcelFunction = xll.ExcelFunction;
const ParamMeta = xll.ParamMeta;

const allocator = std.heap.c_allocator;

// Example custom function
pub const double = ExcelFunction(.{
    .name = "dblit",
    .description = "Double a number",
    .category = "Zig Functions",
    .params = &[_]ParamMeta{
        .{ .name = "x", .description = "Number to double" },
    },
    .func = doubleFunc,
});

fn doubleFunc(x: f64) !f64 {
    return x * 2;
}
