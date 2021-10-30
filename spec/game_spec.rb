require 'game'

describe Game do

  let(:player_1) { double('player_1') }
  let(:game) { Game.new(player_1) }
  before { allow(player_1).to reveive(:name) {'player_1'} }

  describe 'player wins' do

    it 'player wins with rock' do
      allow(game).to receive(:cpu_selection) { 'scissors' }
      game.player_selection('rock')
      expect(game.result).to eq "Contratulations #{player_1.name}! YOU WIN"
    end
      
    it 'player wins with paper' do
    end

    it 'player wins with scissors' do
    end

  end

end