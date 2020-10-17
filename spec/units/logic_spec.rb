require './app/models/logic.rb'

describe Game do
  subject(:game) { Game.new }

  context '#add_names' do
    it 'adds inputted player\'s name' do
      expect(game.add_names("Ben")).to eq "Ben"
    end
  end
end
