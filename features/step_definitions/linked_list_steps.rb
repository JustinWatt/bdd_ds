Given(/^I have a linked list$/) do
  @list = LinkedList.new
end

When(/^I add a node to it$/) do
  @list.insert_to_front(5)
end

Then(/^the linked list should contain that node$/) do
  expect(@list.node_count).to be == 1
end
