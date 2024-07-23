const std = @import("std");

const Color = enum { Black, Red };

const RBTree = struct {
    value: ?i32,
    color: ?bool = Color.Black,
    left: ?*RBTree = undefined,
    right: ?*RBTree = undefined,

    pub fn init() RBTree {
        return RBTree{
            .value = null,
        };
    }
};

pub fn main() !void {}

test "rb tree init" {
    const bst_root = RBTree{
        .value = null,
    };
    try std.testing.expectEqual(bst_root.value, null);
    try std.testing.expectEqual(bst_root.color, Color.Black);
}

test "rb tree insert " {
    const bst_root = RBTree{
        .value = null,
    };
    try std.testing.expectEqual(bst_root.value, null);
}
