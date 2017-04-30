require_relative '../app'

describe SinglePlayer do
  let(:singleplayer) { described_class.new("TestPlayer") }
  it 'creates an instance of the game' do
    expect(SinglePlayer.create_game("TestPlayer")).to be_instance_of(described_class)
  end
  it 'returns the instance of the game' do
    test_single = SinglePlayer.create_game("TestPlayer")
    expect(SinglePlayer.instance).to be test_single
  end

  describe '#decide_winner' do
    it 'returns the player as winner' do
      expect(singleplayer.decide_winner(:paper, :rock)).to eq singleplayer.player
    end
    it 'returns the computer as winner' do
      expect(singleplayer.decide_winner(:scissors, :rock)).to eq singleplayer.computer
    end
    it 'returns tied when both of them is using the same weapon' do
      expect(singleplayer.decide_winner(:paper, :paper)).to eq :tied
    end
  end
end
