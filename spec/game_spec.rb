require 'game.rb'

describe Game do
  let(:game) { described_class.new }
  it 'It is an instance of the game class' do
    expect(game).to be_instance_of Game
  end

  describe '#random_choice' do
    it 'It should be able to return choice from array' do
      expect(["rock", "paper", "scissor"]).to include(game.random_choice)
    end

    it 'Should return rock as a string' do
      srand(67_807)
      expect(game.random_choice).to eq 'rock'
    end
  end

  describe '#win_condition' do
    it 'Should return winner after player picks rock and computers picks scissors' do
      srand(67_809)
      expect(game.win_condition_for_rock).to eq 'Winner'
    end

  end

end
