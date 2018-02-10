require 'game'

describe Game do

  subject(:game) { described_class.new(player, bot) }
  let(:player) { double('Josu', name: 'Josu', choice: 'Rock') }
  let(:bot) { double('bot', name: 'bot', choice: 'Scissors') }

  describe '#initialize' do
    # Check again
    it 'initializes the game with two players' do
      expect(Game).to receive(:new).with(player, bot)

      subject
    end
  end

  describe '#choose_option' do
    # Test for player to choose option?
    # It's in buttons in the view... passed as param

    it 'chooses a random option for the computer' do
      allow(bot).to receive(:random_option).with(no_args { 'Scissors' })

      game.bot.random_option
    end
  end

  describe '#output_winner' do
    it "returns winner's name" do
      allow(player).to receive(:choose_option)#.with('Rock') { 'Rock' }
      allow(bot).to receive(:random_option)#.with(no_args { 'Scissors' })

      # player.choose_option('Rock')
      # bot.random_option
      
      expect(game.output_winner).to eq player.name
    end
  end
end
