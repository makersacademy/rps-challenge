require './lib/game'

describe Game do
  subject(:game) { described_class.new }


  it 'allow opponenet to generate a random selection' do
    allow(game).to receive(:random_selection).and_return('Rock')
    expect(game.random_selection).to eq('Rock')
  end

end
