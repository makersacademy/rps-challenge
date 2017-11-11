require 'game'
  #rspec tests for game class

describe Game do
  subject(:game) { described_class.new }

  describe 'initialization' do
    it 'should be an instance of game class' do
      expect(game).to be_an_instance_of(Game)
    end
  end
end
