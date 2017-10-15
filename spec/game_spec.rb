require 'game'

describe Game do
  let(:player1) { Player.new("Tom") }
  let(:computer_player) { ComputerPlayer.new }
  let(:game) { described_class.new(player1, computer_player) }
    it 'game has player1' do
      expect(game.player1).to eq(player1)
    end

    it 'allows the player to choose rock, paper or scissors' do
      expect(game.player_choose_weapon(:rock)).to eq(:rock)
    end

    it 'allows the computer to choose a weapon' do
      expect(game.computer_choose_weapon).to satisfy { |weapon| weapon == :scissors || weapon == :rock || weapon == :paper }
    end

  context 'draw' do
    before do
      allow(computer_player).to receive(:weapon_choice).and_return(:rock)
    end

    it 'shows a draw if computer and player choose the same weapon' do
      game.player_choose_weapon(:rock)
      expect(game.draw?).to eq(true)
    end
  end

  context 'player wins' do
    before do
      allow(computer_player).to receive(:weapon_choice).and_return(:scissors)
    end

    it 'shows the result if the player wins' do
      game.player_choose_weapon(:rock)
      expect(game.winner).to eq(player1)
    end
  end

  context 'computer wins' do
    before do
      allow(computer_player).to receive(:weapon_choice).and_return(:rock)
    end

    it 'shows the result if the computer wins' do
      game.player_choose_weapon(:scissors)
      expect(game.winner).to eq(computer_player)
    end
  end
end
