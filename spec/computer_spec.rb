require 'computer'

describe Computer do
  subject(:computer) { Computer.new }

  it 'initializes a new computer instance' do
    expect(Computer.new).to be_an_instance_of(Computer)
  end

  describe 'makes_move' do
    it 'selects a move at random' do
      expect(computer).to receive(:makes_move) { 'Scissors' }
      expect(computer.makes_move).to eq 'Scissors'
    end
    it 'selects a move at random' do
      expect(computer).to receive(:makes_move) { 'Paper' }
      expect(computer.makes_move).to eq 'Paper'
    end
    it 'selects a move at random' do
      expect(computer).to receive(:makes_move) { 'Rock' }
      expect(computer.makes_move).to eq 'Rock'
    end
  end
end
