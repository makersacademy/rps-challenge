require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }
  let(:computer) { double :computer_opponent}


  describe '#player' do
    it 'retrieves the player' do
      expect(game.player).to eq player
    end
  end

  describe '#rock' do
    it '#rock changes score' do
      game.rock
      expect(game.player_hand).to eq(game.rock)
    end
  end

  describe '#paper' do
    it '#paper changes score' do
      game.paper
      expect(game.player_hand).to eq(game.paper)
    end
  end

  describe '#scissors' do
    it '#scissors changes score' do
      game.scissors
      expect(game.player_hand).to eq game.scissors
    end
  end

  describe '#opponent_hand' do
    it 'assigns a random hand to the opponent' do
      allow(game).to receive(:random_hand) { "rock" }
      expect(game.opponent_hand).to eq "rock"
    end
  end

  describe '#random_hand' do
    it 'generates a random hand of rock, paper or scissors' do
      expect(["rock", "paper", "scissors"]).to include(game.random_hand)
    end
  end

  describe '#winner?' do
    it 'assigns a winner once the player has chosen a winning hand' do
      allow(game).to receive(:random_hand) { "rock" }
      game.opponent_hand
      game.paper
      expect(game.winner?).to eq(true)
    end
  end

# figure this out

  #   it 'runs the playing sequence' do
  #     allow(game).to receive(:random_hand) { "rock" }
  #     game.rock
  #     expect(game.play).to eq true
  #   end
  # end

end
