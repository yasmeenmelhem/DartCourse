class Node {
  dynamic data;
  Node? next;

  Node(this.data) {
    next = null;
  }
}

Node? removeOccurrences(Node? head, dynamic value) {
  Node? dummy = Node(0);
  dummy.next = head;
  Node? current = dummy;

  while (current?.next != null) {
    if (current?.next!.data == value) {
      current?.next = current.next!.next;
    } else {
      current = current?.next;
    }
  }

  return dummy.next;
}

void main() {
  // Create nodes and construct a linked list
  Node head = Node(5);
  head.next = Node(7);
  head.next?.next = Node(8);
  head.next?.next?.next = Node(7);
  head.next?.next?.next?.next = Node(9);

  // Print original list
  print('Original List:');
  Node? current = head;
  while (current != null) {
    print(current.data);
    current = current.next;
  }

  Node? updatedList = removeOccurrences(head, 7);
  print('\nList after removing all occurrences of 7:');
  while (updatedList != null) {
    print(updatedList.data);
    updatedList = updatedList.next;
  }
}
