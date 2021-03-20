require 'player'

describe Player do
  let(:player) { Player.new("lastgreedymosquito") }

  it 'has name' do
    expect(player.name).to eq "lastgreedymosquito"
  end

  it 'has no choice at start' do
    expect(player.choice).to be_nil
  end

  describe '#make_choice' do
    it 'set choice to rock' do
      player.make_choice("rock")
      expect(player.choice).to eq "rock"
    end
  end

  describe '#make_random_choice' do
    it 'set random choice from rock, paper or scissors' do
      player.make_random_choice
      expect(["rock", "paper", "scissors"].include?(player.choice)).to eq true
    end
  end

end
