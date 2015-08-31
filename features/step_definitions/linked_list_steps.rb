Given(/^a linked list$/) do
  @list = LinkedList.new
end

When(/^I add a node to it$/) do
  @list.insert_to_front(5)
end

Then(/^the linked list should contain that node$/) do
  expect(@list.node_count).to be == 1
end

Given(/^a linked list with (\d+) nodes$/) do |number_of_nodes|
  @list = LinkedList.new
  number_of_nodes.to_i.times { |n| @list.insert_to_front(n) }
  expect(@list.inspect).to be == [4, 3, 2, 1, 0]
  expect(@list.node_count).to be == number_of_nodes.to_i
end

When(/^I delete a node$/) do
  @list.delete(3)
end

Then(/^the linked list should have (\d+) nodes$/) do |number_of_nodes|
  expect(@list.node_count).to be == number_of_nodes.to_i
end

When(/^I reverse the list$/) do
  @list.reverse
end

Then(/^the list should be in reverse order$/) do
  expect(@list.inspect).to be == [0, 1, 2, 3, 4]
end
