require 'computer'

describe Computer do

  it 'returns a random weapon' do
    expect(Game::WEAPONS).to receive(:sample) { :scissors }
    expect(subject.weapon).to eq :scissors
  end
end