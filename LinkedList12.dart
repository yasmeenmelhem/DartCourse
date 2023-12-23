class Node {
  dynamic data;
  Node? next;

  Node(this.data) {
    next = null;
  }
}

void printReverse(Node? head) {
  if (head == null) return;

  printReverse(head.next);
  print(head.data);
}

Node? findMiddleNode(Node? head) {
  if (head == null) return null;

  Node? slowPointer = head;
  Node? fastPointer = head;

  while (fastPointer != null && fastPointer.next != null) {
    slowPointer = slowPointer!.next;
    fastPointer = fastPointer.next!.next;
  }

  return slowPointer;
}

void main() {
  
  Node head = Node(5);
  head.next = Node(6);
  head.next!.next = Node(7);
  head.next!.next!.next = Node(8);
  head.next!.next!.next!.next = Node(9);

  
  print('The result reverse:');
  printReverse(head);

  
  Node? middleNode = findMiddleNode(head);
  print('The Middle node is : ${middleNode?.data}');
}
