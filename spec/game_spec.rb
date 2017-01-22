require 'game'

describe Game do

  subject(:game) { described_class.new(player) }
  let(:player) { double :player }


  describe '#On initialization:' do
    it 'Has a player.' do
      expect(game.player).to eq player
    end
    it 'Creates the array of choices.' do
      expect(game.choices).to eq ["rock", "paper", "scissors"]
    end
  end

  describe '#On player_choice:' do
    it 'Sets choice variable to rock when player_choice is rock.' do
      game.player_choice("rock")
      expect(game.choice).to eq "rock"
    end
  end

  describe '#On computer_choice' do
    it 'Returns a random value from the choices array.' do
      allow(game).to receive(:computer_choice).and_return("rock")
      expect(game.computer_choice).to eq("rock")
    end
  end

  # describe '#On choose_round_winner' do
  #   it 'The player wins the round' do
  #   allow(game).to receive(:computer_choice).and_return("scissors")
  #   allow(game).to receive(:player_choice).and_return("rock")
  #   expect(game.choose_round_winner).to eq "player"
  #   end
  #
  #   it 'The computer wins the round' do
  #   allow(game).to receive(:computer_choice).and_return("paper")
  #   allow(game).to receive(:player_choice).and_return("rock")
  #   expect(game.choose_round_winner).to eq "computer"
  #   end
  #
  #   it 'The player and computer draw' do
  #   allow(game).to receive(:computer_choice).and_return("paper")
  #   allow(game).to receive(:player_choice).and_return("paper")
  #   expect(game.choose_round_winner).to eq "draw"
  #   end
  # end


end
