require_relative 'my_enumerable'

using MyEnumerable

describe MyEnumerable do
  
  empty_array = []
  array = [0, 1, 2, 3, 4, 5]

  context "array gets block" do
    context "when array empty" do
      it "should return nothing" do 
        expect(empty_array.my_each {}).to eq ([])
      end
    end

    context "when array not empty" do
      it "should return array" do 
        expect(array.my_each {}).to eq ([0, 1, 2, 3, 4, 5])
      end
    end
  end

  context "array not gets block" do
    context "when array empty" do
      it "should return nothing" do 
        expect(empty_array.my_each).to eq ([])
      end
    end

    context "when array not empty" do
      it "should return nil" do 
        expect(array.my_each).to eq ([0, 1, 2, 3, 4, 5])
      end
    end
  end
end