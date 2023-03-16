const std = @import("std");

// Although this function looks imperative, note that its job is to
// declaratively construct a build graph that will be executed by an external
// runner.
pub fn build(b: *std.Build) void {
    _ = b.addModule("zgl", .{
        // In this case the main source file is merely a path, however, in more
        // complicated build scripts, this could be a generated file.
        .source_file = std.Build.FileSource.relative("zgl.zig"),
    });
}
