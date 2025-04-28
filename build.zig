const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const time = b.addModule("zig-time", .{
        .target = target,
        .optimize = optimize,
        .root_source_file = b.path("time.zig"),
    });

    _ = b.addTest(.{
        .target = target,
        .optimize = optimize,
        .root_module = time,
    });
}
