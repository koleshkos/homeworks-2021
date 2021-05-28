require_relative 'sergey_koleshko_hw_03_t_04'

describe '.counter' do
  str_with_digits = 'hel2!lo'
  str_only_lettets = 'wicked .. !'
  str_only_digits = '12345'
  str_empty = ''

  context 'string with digits' do
    it 'should return 5 letters and 1 digits' do 
      expect(counter(str_with_digits)).to eq ({letters: 5, digits: 1})
    end
  end

  context 'string with only letters' do
    it 'should return 0 letters and 5 digits' do 
      expect(counter(str_only_lettets)).to eq ({letters: 6, digits: 0})
    end
  end

  context 'string with only digits' do
    it 'should return 0 letters and 5 digits' do 
      expect(counter(str_only_digits)).to eq ({letters: 0, digits: 5})
    end
  end

  context 'string is empty' do
    it 'should return 0 letters and 0 digits' do 
      expect(counter(str_empty)).to eq ({letters: 0, digits: 0})
    end
  end
end