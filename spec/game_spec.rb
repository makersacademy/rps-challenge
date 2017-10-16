require 'game'

describe Game do
  let(:player1) { Player.new("Tom") }
  let(:player2) { ComputerPlayer.new }
  let(:game) { described_class.new(player1, player2) }
    it 'game has player1' do
      expect(game.player1).to eq(player1)
    end

  context 'draw' do
    before do
      allow(player2).to receive(:weapon_choice).and_return(:rock)
    end

    it 'shows a draw if computer and player choose the same weapon' do
      game.player1.choose_weapon(:rock)
      expect(game.draw?).to eq(true)
    end
  end

  context 'player wins' do
    before do
      allow(player2).to receive(:weapon_choice).and_return(:scissors)
    end

    it 'shows the result if the player wins' do
      game.player1.choose_weapon(:rock)
      expect(game.winner).to eq(player1)
    end
  end

  context 'computer wins' do
    before do
      allow(player2).to receive(:weapon_choice).and_return(:rock)
    end

    it 'shows the result if the computer wins' do
      game.player1.choose_weapon(:scissors)
      expect(game.winner).to eq(player2)
    end
  end
end
