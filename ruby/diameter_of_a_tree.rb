class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def diameter_of_binary_tree(root)

  return 0 if root.nil?

end





root = TreeNode.new(
  1,
  TreeNode.new(
    2,
    TreeNode.new(
      4,
      TreeNode.new(6)
    ),
    TreeNode.new(5)
  ),
  TreeNode.new(3)
)

diameter(root)