require_relative '../lib/linked_list'

describe 'linked list' do

  let(:list) { LinkedList.new }

  context 'when the list has no nodes' do 
    it 'can be created without error' do
      expect { list }.not_to raise_error
    end

    it 'has no nodes' do
      expect(list.node_count).to be == 0 
    end

    it 'a node can be inserted to the front' do
      list.insert_to_front(5)
      expect(list.node_count).to be == 1
    end

    it 'several nodes can be inserted' do
      (1..5).each do |x|
        list.insert_to_front(x)
      end
      expect(list.node_count).to be == 5
    end
  end
  
end

  
