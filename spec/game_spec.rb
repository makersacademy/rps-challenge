require './lib/game.rb'

describe Game do
  let(:game) { Game.new(player) }
  let(:player) { double(:player, :choice => player_choice) }
  let(:player_choice) { double(:player_choice) }

  context '#player' do
    it 'gets the player' do
      expect(game.player).to eq(player)
    end
  end

  context '#play' do
    it 'gets the player\'s choice' do
      expect(game.move('rock')).to eq(player.choice)
    end
  end
end
