require 'match'

describe Match do
  context 'Decides winner' do

    it 'rock wins' do
      match = Match.new('Rock', 'Scissors')
      match.decider
      expect(match.show_message).to eq 'Rock beats Scissors. You win!'
    end

    it 'paper wins' do
      match = Match.new('Paper', 'Rock')
      match.decider
      expect(match.show_message).to eq 'Paper beats Rock. You win!'
    end

    it 'scissors win' do
      match = Match.new('Scissors', 'Paper')
      match.decider
      expect(match.show_message).to eq 'Scissors beats Paper. You win!'
    end
  end
end
