require_relative '../lib/game.rb'

describe Game do
    let(:game){described_class.new(:rock)}
    it 'It knows the player move when created' do
        expect(game.player_move).to eq(:rock)
    end
end
        
