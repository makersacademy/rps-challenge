require './lib/game'

describe Game do

  describe 'computer' do
    it 'selects rock, paper or scissors' do
      expect(subject.move).to include(subject.computer_move)
    end
  end

end
