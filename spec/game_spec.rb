require 'game'

describe Game do

  let(:jamie) { Player.new "Jamie" }
  let(:computer) { Computer.new }
  subject(:game) { Game.new(jamie, computer) }

  describe '#initialize' do
    it 'is initialized with a player and computer' do
      game = Game.new(jamie, computer)
      expect(game.player).to eq jamie
    end
  end

   it { is_expected.to respond_to(:play).with(1).argument }

  #  describe '#play' do
  #    it 'game delegates to computer '

end
