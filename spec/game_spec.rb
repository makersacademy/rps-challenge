require 'game'

describe Game do

  context 'initial tests' do

    let(:andy) { double('Player') } 
    let(:sheldon) { double('Computer') }
    let(:game) { Game.new('Andy', 'Sheldon') }

    it 'should have a list of weapons' do
    expect(Game::WEAPONS).to eq [:rock, :paper, :scissors] 
    end

    it 'player 1 should be Andy' do
      expect(game.player_1).to eq 'Andy'
    end

  end

end
