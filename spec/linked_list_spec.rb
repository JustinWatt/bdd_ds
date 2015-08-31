require_relative '../lib/linked_list'

describe 'linked list' do

  let(:list) { LinkedList.new }

  context 'when a list has no nodes' do
    it 'can be created without error' do
      expect { list }.not_to raise_error
    end

    it 'has no nodes' do
      expect(list.empty?).to be_truthy
    end

    it 'a node can be inserted to the front' do
      list.insert_to_front(5)
      expect(list.node_count).to be == 1
      expect(list.inspect).to be == [5]
    end

    it 'several nodes can be inserted' do
      5.downto(1).each do |x|
        list.insert_to_front(x)
      end
      expect(list.node_count).to be == 5
      expect(list.inspect).to be == [1, 2, 3, 4, 5]
    end
  end

  describe '#delete' do
    describe 'empty list' do
      it 'won\'t delete empty list' do
        expect(list.delete(5)).to be_falsey
      end
    end

    describe 'list with data' do
      before(:example) do
        5.downto(1).each do |x|
          list.insert_to_front(x)
        end
      end

      it 'target found' do
        expect(list.delete(3)).to be == 3
        expect(list.inspect).to be == [1, 2, 4, 5]
      end

      it 'can\'t find target' do
        expect(list.delete(0)).to be_falsey
        expect(list.inspect).to be == [1, 2, 3, 4, 5]
      end
    end
  end

  describe '#reverse' do
    before(:example) do
      5.downto(1).each do |x|
        list.insert_to_front(x)
      end
    end

    it 'reverses the list' do
      list.reverse
      expect(list.inspect).to be == [5, 4, 3, 2, 1]
    end
  end
end
