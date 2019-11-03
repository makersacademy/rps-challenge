require 'computer'

describe Computer do
let(:comp) { described_class.new }
let(:game) { Game::WEAPONS }

  it 'chooses a random weapon' do
    allow(game).to receive(:sample).and_return :scissors
    expect(comp.choose_weapon).to eq :scissors
  end
end
