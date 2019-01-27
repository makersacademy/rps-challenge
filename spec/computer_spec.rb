require 'computer'

RSpec.describe Computer do
  let(:computer) { Computer.new("HAL") }
  it 'initilizes with a name' do
    expect(computer.name).to eq("HAL")
  end

  describe '#make_move' do
    it 'returns a move' do
      allow(computer).to receive(:make_move).and_return('rock')
      expect(computer.make_move).to eq('rock')
    end

    it 'chooses a random move from the given options' do
      expect(['rock', 'paper', 'scissors']).to include(computer.make_move)
    end
  end
end
