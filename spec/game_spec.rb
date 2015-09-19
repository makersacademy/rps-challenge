require 'game'

describe Game do

  let(:player1){double(:player1)}
  let(:player2){double(:player2)}

  describe '#new' do

    it 'accepts two arguments when initializing' do
      expect{ Game.new(player1, player2) }.not_to raise_error
    end

  end

end