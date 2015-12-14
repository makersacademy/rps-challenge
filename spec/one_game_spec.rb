require 'one_game'

describe One_game do

  describe 'stub computer choice to rock' do

    it 'allows two choices upon initialization in case of two players' do
      expect{One_game.new('rock')}.not_to raise_error
    end
  end
end
