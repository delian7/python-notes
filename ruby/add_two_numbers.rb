class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

head = tail = ListNode.new(0)

# head.val = 4
# tail = head.next
new_node = ListNode.new(4)
tail.next = new_node
tail = new_node

new_node = ListNode.new(5)
tail.next = ListNode.new(5)
tail = new_node

# head.val = 5
# head.next = tail



while head

  # p head.val
  p tail.val

  head = head.next
end