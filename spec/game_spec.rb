require_relative '../lib/game'

describe Game do
  let(:game) { described_class.new('Rock!') }
  it 'It knows the player move when created' do
    expect(game.player_move).to eq('Rock!')
  end

    # describe '#outcomes' do
    #   it 'results a draw when move moves are equal to each other' do
    #     allow(game).to receive(:comp_move){'Rock!'}
    #     p game.comp_move
    #     p game.player_move
    #     expect(game.outcome).to eq('Its a draw - no one wins')
    #   end
    # end 

end
