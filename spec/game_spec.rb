require 'game'

describe Game do

  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  subject(:game) { described_class.new(:player) }
  let(:player) { double :player, name: "name" }
  let(:rock) { double :rock }

    it 'records the player as an instance variable' do
      expect(subject.player).to eq :player
    end

  describe '#computer' do
    it 'chooses a weapon at random' do
      expect([:rock, :paper, :scissors]).to include(subject.computer)
    end

    it 'assigns that weapon to the opposition instance variable' do
      example = subject.computer
      expect(subject.opposition).to eq example
    end
  end

  describe '#winner' do
    it 'returns "Player Wins!" if the player beats the opposition' do
      subject.opposition = :scissors
      allow(subject).to receive_message_chain(:player, :weapon) { :rock }
      expect(subject.winner).to eq "Player Wins!"
    end

    it 'returns "Player Loses!" if the player loses to the opposition' do
      subject.opposition = :paper
      allow(subject).to receive_message_chain(:player, :weapon) { :rock }
      expect(subject.winner).to eq "Player Loses!"
    end

    it 'returns "A draw..." if neither wins' do
      subject.opposition = :rock
      allow(subject).to receive_message_chain(:player, :weapon) { :rock }
      expect(game.winner).to eq "A draw..."
    end
  end
end
