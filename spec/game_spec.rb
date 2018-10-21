require 'game'
require 'computer'
require 'pry'


describe Game do
  subject(:game) { described_class.new(chloe) }
  let(:chloe) { double :player, name: "Chloe" }
  let(:fake_computer) { double :computer, choice: "Paper" }

  describe '#initalize' do
    it 'should pass arguments to instance of Player' do
      expect(game.player).to eq chloe
    end
  end

  describe '#player_choice' do
    it 'should return the player\'s choice' do
      expect(game.player_choice("Rock")).to eq "Rock"
    end
  end

  describe '#computer_choice' do
    it 'should return the computer\'s random choice' do
      expect(["Rock", "Paper", "Scissors"]).to include game.computer_choice
    end
  end

  describe '#winner' do
    it 'should tell the player if they won' do
      allow(game).to receive(:player_win?) { true }
      expect(game.winner).to eq "You win!"
    end
    it 'should tell the player if they drew' do
      allow(game).to receive(:player_drew?) { true }
      expect(game.winner).to eq "You drew!"
    end
    it 'should tell the player if they lost' do
      allow(game).to receive(:player_drew?) { false }
      allow(game).to receive(:player_win?) { false }
      expect(game.winner).to eq "You lost!"
    end
  end

  # describe '#player_win?' do
  #   let(:computer) { double :computer}
  #   it 'should return true if player won' do
  #     player = Player.new("Chloe")
  #     game = Game.new(player)
  #     game.player_choice("Scissors")
  #     allow(game.computer_choice).to receive(:choice).and_return("Paper")
  #     # binding.pry
  #     expect(game.player_win?).to eq true
  #   end
  #   it 'should return false if player lost or drew' do
  #     player = Player.new("Chloe")
  #     game = Game.new(player)
  #     game.player_choice("Paper")
  #     allow(game.computer_choice).to receive(:choice) { "Paper" }
  #     # binding.pry
  #     expect(game.player_win?).to eq false
  #   end
  # end
  # describe '#player_drew?' do
  #   it 'should return true if players drew' do
  #     player = Player.new("Chloe")
  #     game = Game.new(player)
  #     game.player_choice("Paper")
  #     allow(game.computer_choice).to receive(:choice) { "Paper" }
  #     # binding.pry
  #     expect(game.player_win?).to eq true
  #   end
  #   it 'should return false if player did not draw' do
  #     player = Player.new("Chloe")
  #     game = Game.new(player)
  #     game.player_choice("Scissors")
  #     allow(game.computer_choice).to receive(:choice) { "Paper" }
  #     # binding.pry
  #     expect(game.player_win?).to eq false
  #   end
  # end
end
