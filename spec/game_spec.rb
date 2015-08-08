require 'game'

describe Game do
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

    it 'can make weapons availble'do
    weapon = double()
    expect{ subject.make_available weapon }.to change { subject.available_weapons.include?(weapon) }.from(false).to(true)
  end

  it 'can generate random throw for computer player' do
    rock = double()
    subject.make_available rock
    subject.computer_throw
    expect(subject.moves).to include( {:computer => rock} )
  end

end
