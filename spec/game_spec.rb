require './lib/game.rb'

RSpec.describe Game do

  describe '#random_selection' do
    it 'expects to return random selection from RPS' do
      expect(["Rock", "Paper", "Scissors"]).to include(subject.random_selection)
    end
  end



end
