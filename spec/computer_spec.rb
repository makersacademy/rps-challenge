require './models/computer.rb'

describe Computer do

  subject(:computer) { described_class.new }
  
  describe '#random_play' do

    it 'returns a random choice' do
      expect(["Rock", "Paper", "Scissors"]).to include computer.random_play
    end

  end

end