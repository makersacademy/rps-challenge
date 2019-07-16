require 'game'

describe Game do

  subject(:game1) {described_class.new(input_double)}
  let(:input_double) { double 'rock'}
  win_double = 'rock'
  lose_double = 'paper'
  tie_double = 'scissors'
  invalid_entry = "rok"


  it 'should store a player input' do
    allow(input_double).to receive(:downcase).and_return input_double
    expect(game1.player_input).to eq input_double
  end

  describe '#random_num' do
    it ' generates random number' do
      allow(input_double).to receive(:downcase).and_return input_double
      allow(game1).to receive(:random_num).and_return(12345)
      expect(game1.random_num). to eq 12345
    end
  end

  # it 'generates a computer choice' do
  #   allow(game1).to receive(:random_num).and_return(12345)
  #   expect(game1.computer_choice).to eq "scissors"      #this generates scissors, but what if I want to test when computer chooses paper or rock?
  # end

  describe '#computer_choice' do
    it 'generates a computer choice' do
      allow(input_double).to receive(:downcase).and_return input_double
      game1.rand_seed = 3
      expect(game1.computer_choice).to eq "scissors"      #this generates scissors, but what if I want to test when computer chooses paper or rock?
    end
  end

  describe '#result' do

    it 'correctly calculates a win outcome' do
      game = Game.new(win_double)
      game.rand_seed = 3
      game.computer_choice
      expect(game.result).to eq "You win"
    end

    it 'correctly caluclates a lose outcome' do
      game = Game.new(lose_double)
      game.rand_seed = 3
      game.computer_choice
      expect(game.result).to eq "Computer wins"
    end

    it 'correctly calculates a tie' do
      game = Game.new(tie_double)
      game.rand_seed = 3
      game.computer_choice
      expect(game.result).to eq "Its a tie"

    end

    it 'does not accept an invalid entry' do
      allow(input_double).to receive(:downcase).and_return input_double
      game = Game.new(invalid_entry)
      game.rand_seed = 3
      game.computer_choice
      expect(subject.result).to eq "sorry, invalid move given"
    end
  end
end
