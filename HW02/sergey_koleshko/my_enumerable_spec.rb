require_relative 'my_enumerable'

using MyEnumerable

describe MyEnumerable do
  
  empty_array = []
  array = [0, 1, 2, 3, 4, 5]

  # my_each
  context '#my_each' do
    context "array gets block" do
      context "when array empty" do
        it "should return nothing" do 
          expect(empty_array.my_each {}).to eq ([])
        end
      end
      context "when array empty" do
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
  
  # my_select
  context '#my_select' do
   context 'gets block' do
     context 'empty array' do
       it 'should return empty array' do 
         expect(empty_array.my_select {}).to eq ([])
       end
     end
  
     context 'not empty array'
       it 'should return empty array' do 
         expect(array.my_select {}).to eq ([])
       end
     end
   end
  
   context 'not gets block' do
     context 'empty array' do
       it 'should return empty array' do 
         expect(empty_array.my_select).to eq ([])
       end
     end
  
     context 'not empty array' do
       it 'should return array' do 
         expect(array.my_select).to eq ([0, 1, 2, 3, 4, 5])
       end
     end
   end

   #my_map
   context '#my_map' do
    context 'gets block' do
      context 'empty array' do
        it 'should return empty array' do
          expect(empty_array.my_map {}).to eq ([])
        end
      end
      context 'not empty array' do
        it 'should return array' do
          expect(array.my_map {}).to eq ([nil, nil, nil, nil, nil, nil])
        end
      end
    end

    context 'not gets block' do
      context 'empty array' do
        it 'should return empty array' do
          expect(empty_array.my_map).to eq ([])
        end
      end
      context 'not empty array' do
        it 'should return array' do
          expect(array.my_map).to eq ([0, 1, 2, 3, 4, 5])
        end
      end
    end

   end
end