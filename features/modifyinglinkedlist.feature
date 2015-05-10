Feature: Modifying a linked list

  Scenario:
    Given a linked list
    When I add a node to it
    Then the linked list should contain that node

  Scenario:
    Given a linked list with 5 nodes
    When I delete a node
    Then the linked list should have 4 nodes

