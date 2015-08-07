require 'game'

describe Game do
  it{ is_expected.to respond_to :available_weapons }

  it 'can register a player' do
  player = double()
  expect(subject.gamers).to include(subject.register player)
  end
end
