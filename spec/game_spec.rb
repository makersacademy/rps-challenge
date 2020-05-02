require './lib/game'

describe Game do

  describe 'computer' do
    it 'selects rock, paper or scissors' do
      expect(subject.options).to include(subject.rps)
    end
  end

end
