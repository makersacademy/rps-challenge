require 'game'

describe Game do
  let(:player1) { Player.new("Tom") }
  let(:player2) { ComputerPlayer.new }
  let(:game) { described_class.new(player1, player2) }
    it 'game has player1' do
      expect(game.player1).to eq(player1)
    end

  context 'computer chooses scissors' do
    before do
      allow(player2).to receive(:weapon_choice).and_return(:scissors)
    end

    it 'player wins if he chooses rock' do
      game.player1.choose_weapon(:rock)
      expect(game.winner).to eq(player1)
    end

    it 'player wins if he chooses spock' do
      game.player1.choose_weapon(:spock)
      expect(game.winner).to eq(player1)
    end

    it 'player loses if he chooses paper' do
      game.player1.choose_weapon(:paper)
      expect(game.winner).to eq(player2)
    end

    it 'player loses if he chooses lizard' do
      game.player1.choose_weapon(:lizard)
      expect(game.winner).to eq(player2)
    end

    it 'player draws if he chooses scissors' do
      game.player1.choose_weapon(:scissors)
      expect(game.draw?).to eq(true)
    end
  end
end
