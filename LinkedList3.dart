class Node {
  dynamic data;
  Node? next;

  Node(this.data) {
    next = null;
  }
}

Node? reverseLinkedList(Node? head) {
  Node? prev = null;
  Node? current = head;
  Node? nextNode;

  while (current != null) {
    nextNode = current.next;
    current.next = prev;
    prev = current;
    current = nextNode;
  }

  return prev;
}

void main() {
  // Create nodes and construct a linked list
  Node head = Node(1);
  head.next = Node(2);
  head.next?.next = Node(3);
  head.next?.next?.next = Node(4);
  head.next?.next?.next?.next = Node(5);

  // Print original list
  print('Original List:');
  Node? current = head;
  while (current != null) {
    print(current.data);
    current = current.next;
  }

  // Reverse the linked list
  Node? reversedList = reverseLinkedList(head);
  print('\nReversed List:');
  while (reversedList != null) {
    print(reversedList.data);
    reversedList = reversedList.next;
  }
}
