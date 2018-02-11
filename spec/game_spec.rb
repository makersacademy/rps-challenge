require 'game'

describe Game do

  subject(:game) { described_class.new(player, bot) }
  let(:player) { double('Josu', name: 'Josu', weapon: 'Rock') }
  let(:bot) { double('bot', name: 'bot', weapon: 'Scissors') }

  let(:another_player) { double('sleepy 1', name: 'sleepy 1', weapon: 'Rock') }
  let(:sleepy_player) { double('sleepy 2', name: 'sleepy 2', weapon: nil) }

  describe '#initialize' do
    it 'initializes the game with two players' do
      expect(game.player.name).to eq 'Josu'
      expect(game.bot.name).to eq 'bot'
    end
  end

  describe '#choose_option' do
    it 'chooses a random option for the computer' do
      allow(bot).to receive(:random_option).with(no_args { 'Scissors' })

      game.bot.random_option
    end
  end

  describe '#output_winner' do
    it 'raises an error if either of the players fails to choose an option' do
      allow(another_player).to receive(:choose_option)
      allow(sleepy_player).to receive(:choose_option).with no_args

      unfair_game = Game.new(another_player, sleepy_player)
      expect {unfair_game.output_winner}.to raise_error('You both must choose a weapon!')
    end

    it "returns winner's name" do
      allow(player).to receive(:choose_option)
      allow(bot).to receive(:random_option)
      
      expect(game.output_winner).to eq player.name
    end
  end
end
