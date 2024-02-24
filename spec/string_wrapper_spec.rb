require 'string_warpper'

RSpec.describe StringWrapper do
    let(:my_string) {StringWrapper.new('Hello')}
    describe "#reverse" do
      it "reverses the string" do
        my_string.reverse
        expect(my_string.reverse).to eq('olleH')
      end
    end
  
    describe "#upcase" do
      it "converts the string to uppercase" do
        my_string.upcase
        expect(my_string.upcase).to eq('HELLO')
      end
    end
  
    describe "#downcase" do
      it "converts the string to lowercase" do
        my_string.downcase
        expect(my_string.downcase).to eq('hello')
      end
    end
  end
  