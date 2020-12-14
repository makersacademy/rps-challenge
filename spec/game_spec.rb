require 'game'

describe Game do

  subject(:game) { Game.new(player_double, sampler_double) }
  let(:player_double) { double :player }
  let(:sampler_double) { double :sampler }  #, generate: 0 }

  it 'creates a new instance of Game' do
    expect(game).to be_instance_of(Game)
  end

  describe '#player' do
    it 'retrieves the current player' do
      expect(game.player).to eq(player_double)
    end
  end

  describe '#randomiser' do
    it 'generates a random computer move of Rock' do
      allow(sampler_double).to receive(:generate).and_return(0)
      game.randomiser
      expect(game.comp_move).to eq(0)
    end

    it 'generates a random computer move of Paper' do
      allow(sampler_double).to receive(:generate).and_return(1)
      game.randomiser
      expect(game.comp_move).to eq(1)
    end

    it 'generates a random computer move of Scissors' do
      allow(sampler_double).to receive(:generate).and_return(2)
      game.randomiser
      expect(game.comp_move).to eq(2)
    end
  end

end
