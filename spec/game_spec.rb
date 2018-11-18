require 'game'

describe Game do
  let(:game) { described_class.new(player1, player2, 'standard') }
  let(:singleplayer_game) { described_class.new(player1, computer, 'standard') }
  let(:extended_game) { described_class.new(player1, player2, 'extended') }

  let(:player1) { double("player1", :name => 'Tom', :computer => false) }
  let(:player2) { double("player2", :name => 'Bob', :computer => false) }
  let(:computer) { double("computer", :name => 'Computer', :computer => true) }

  context 'Standard game' do
    it 'result is draw if players moves are the same (Rock)' do
      allow(player2).to receive(:move).and_return "Rock"
      allow(player1).to receive(:move).and_return "Rock"
      game.play
      expect(game.outcome).to eq("It's a draw")
    end

    it 'result is draw if players moves are the same (Paper)' do
      allow(player2).to receive(:move).and_return "Rock"
      allow(player1).to receive(:move).and_return "Rock"
      game.play
      expect(game.outcome).to eq("It's a draw")
    end

    it 'result is draw if players moves are the same (Scissors)' do
      allow(player2).to receive(:move).and_return "Rock"
      allow(player1).to receive(:move).and_return "Rock"
      game.play
      expect(game.outcome).to eq("It's a draw")
    end

    it 'player1 wins if their move is Paper and Player2 Rock' do
      allow(player1).to receive(:move).and_return "Paper"
      allow(player2).to receive(:move).and_return "Rock"
      game.play
      expect(game.outcome).to eq("Tom won")
    end

    it 'player1 wins if their move is Scissors and Player2 Paper' do
      allow(player1).to receive(:move).and_return "Scissors"
      allow(player2).to receive(:move).and_return "Paper"
      game.play
      expect(game.outcome).to eq("Tom won")
    end

    it 'player loses if their move is Scissors and Player2 Rock' do
      allow(player1).to receive(:move).and_return "Scissors"
      allow(player2).to receive(:move).and_return "Rock"
      game.play
      expect(game.outcome).to eq("Bob won")
    end
  end

  context 'Extended game' do
    it 'result is draw if players choose the same (Lizard)' do
      allow(player2).to receive(:move).and_return "Lizard"
      allow(player1).to receive(:move).and_return "Lizard"
      extended_game.play
      expect(extended_game.outcome).to eq("It's a draw")
    end

    it 'player1 wins if their move is Lizard and Player2 Spock' do
      allow(player1).to receive(:move).and_return "Lizard"
      allow(player2).to receive(:move).and_return "Spock"
      extended_game.play
      expect(extended_game.outcome).to eq("Tom won")
    end

    it 'player1 wins if their move is Rock and Player2 Lizard' do
      allow(player1).to receive(:move).and_return "Rock"
      allow(player2).to receive(:move).and_return "Lizard"
      extended_game.play
      expect(extended_game.outcome).to eq("Tom won")
    end

    it 'player1 wins if their move is Scissors and Player2 Lizard' do
      allow(player1).to receive(:move).and_return "Scissors"
      allow(player2).to receive(:move).and_return "Lizard"
      extended_game.play
      expect(extended_game.outcome).to eq("Tom won")
    end
  end
end
