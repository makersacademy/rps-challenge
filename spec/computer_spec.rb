require 'computer'

RSpec.describe Computer do
  it 'initilizes with a name' do
    computer = Computer.new("HAL")
    expect(computer.name).to eq("HAL")
  end

  describe '#make_move' do
    it 'returns a move' do
      computer = Computer.new("HAL")
      allow(computer).to receive(:make_move).and_return('rock')
      expect(computer.make_move).to eq('rock')
    end

    it 'chooses a random move from the given options' do
      computer = Computer.new("HAL")
      expect(['rock', 'paper', 'scissors']).to include(computer.make_move)
    end
  end
end