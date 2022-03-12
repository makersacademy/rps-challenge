require 'game.rb'

describe Game do

  let(:adam) { Player.new("Adam") }

  context 'setup' do

    it 'should accept a player when initialised' do
      expect{Game.new(:adam)}.to_not raise_error
    end

    it 'should return a player once initialised' do
      game = Game.new(:adam)
      expect(game.player).to eq :adam
    end

  end

end