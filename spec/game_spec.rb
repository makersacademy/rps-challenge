require 'game'

describe Game do

  subject(:game) { described_class.new(player, bot) }
  let(:player) { double('Josu') }
  let(:bot) { double('bot') }

  describe '#initialize' do
    # Check again
    it 'initializes the game with two players' do
      expect(Game).to receive(:new).with(player, bot)

      subject
    end
  end

  describe '#choose_option' do
    it 'chooses a random option for the computer' do
      allow(game.bot).to receive(:choose_option).with no_args { 'Scissors' }

      game.bot.choose_option
    end
  end 
end
