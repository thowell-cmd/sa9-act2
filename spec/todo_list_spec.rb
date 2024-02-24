require 'todo_list'

RSpec.describe TodoList do
    let(:list_1) {TodoList.new}
    describe "#add" do
      it "adds a todo to the list" do
        list_1.add('task 1')
        expect(list_1.todos).to include('task 1')

      end
    end
  
    describe "#remove" do
      it "removes a todo from the list" do
        list_1.remove('task 1')
        expect(list_1.todos).not_to include('task 1')
      end
    end
  
    describe "#todos" do
      it "returns all todos" do
        list_1.add('blah_blah')
        list_1.add('shhh_shhhh')
        expect(list_1.todos).to include('blah_blah', 'shhh_shhhh')
      end
    end
  end
  