require 'game'

describe 'Game' do
  subject(:game){ Game.new }
  context '#initialize' do
    it 'has an array of options' do
      expect(game.choices).to eq [:rock, :paper, :scissors]
    end
  end

end
