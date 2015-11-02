require './lib/computer'

describe Computer do
  subject(:computer) { Computer }

  it 'returns weapon as rock' do
    allow(Game::WEAPONS).to receive(:sample).and_return(:rock)
    expect(computer.weapon).to eq :rock
  end
end
