const std = @import("std");

pub fn main() void {
    const stdout = std.io.getStdOut().writer();
    for (0..1000000) |i| {
        stdout.print("{}\n", .{i}) catch {};
    }
}
