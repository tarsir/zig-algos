const std = @import("std");

const Color = enum { Black, Red };

const RBTree = struct {
    value: ?i32,
    color: ?Color = Color.Black,
    left: ?*RBTree = undefined,
    right: ?*RBTree = undefined,

    pub fn init() RBTree {
        return RBTree{
            .value = null,
        };
    }

    pub fn insert(self: *RBTree, value: i32) !void {
        if (self.value == null) {
            self.value = value;
            return;
        }

        if (self.value > value) {}
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

test "rb tree insert with empty tree" {
    var bst_root = RBTree{
        .value = null,
    };
    try std.testing.expectEqual(bst_root.value, null);

    try bst_root.insert(5);
    try std.testing.expectEqual(bst_root.value, 5);
}

test "rb tree multiple inserts" {
    var bst_root = RBTree{
        .value = null,
    };
    try bst_root.insert(5);
    try bst_root.insert(3);
    try bst_root.insert(10);
}
