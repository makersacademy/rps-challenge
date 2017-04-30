require_relative '../app'

describe SinglePlayer do
  let(:singleplayer) { described_class.new }
  it 'creates an instance of the game' do
    expect(SinglePlayer.create_game).to be_instance_of(described_class)
  end
  it 'returns the instance of the game' do
    test_single = SinglePlayer.create_game
    expect(SinglePlayer.instance).to be test_single
  end

  describe '#computer_choice' do
    it 'returns a randomly selected weapon' do
      srand(1)
      expect(singleplayer.computer_choice).to eq :paper
    end
  end

  describe '#decide_winner' do
    before do
      allow(singleplayer).to receive(:computer_choice).and_return(:paper)
    end
    it 'returns the player as winner' do
      expect(singleplayer.decide_winner(:scissor)).to eq :player
    end
    it 'returns the computer as winner' do
      expect(singleplayer.decide_winner(:rock)).to eq :computer
    end
    it 'returns tied when both of them is using the same weapon' do
      expect(singleplayer.decide_winner(:paper)).to eq :tied
    end
  end
end
