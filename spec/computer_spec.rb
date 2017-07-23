require 'computer'

describe Computer do
  subject(:game) { described_class.new }
  let(:weapons) { [:rock, :paper, :scissors] }

  it 'has weapons' do
    expect(Game::WEAPONS).to eq weapons
  end
end
