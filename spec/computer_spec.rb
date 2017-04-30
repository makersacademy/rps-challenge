require 'computer'

describe 'computer' do
  subject(:computer) { Computer.new }

  describe '# name' do
    it 'expects the default name to be Ogruk' do
      expect(computer.name). to eq "Ogruk"
    end
  end
  describe '#score' do
    it 'expects the default score to be 0' do
      expect(computer.score).to eq 0
    end
  end

  describe '#attack' do
    it 'expects the computer to respond to attack' do
      expect(computer).to respond_to(:attack)
    end
  end
end
