require 'rock_paper_scissors'

describe Rock_Paper_Scissors do
  it{ is_expected.to respond_to :available_weapons }

  it 'can register a player' do
  player = double()
  expect(subject.gamers).to include(subject.register player)
  end

  it 'can register a throw by a player' do
  player = double()
  allow(player).to receive(:throw).and_return('weapon')
  player.throw 'weapon'   
  subject.moves[player] = 'weapon'
  expect(subject.moves).to include({player => 'weapon'})
  end

end
