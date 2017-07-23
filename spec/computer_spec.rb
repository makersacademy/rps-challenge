require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  let(:weapons) { [:rock, :paper, :scissors] }

  it 'has weapons' do
    expect(Computer::WEAPONS).to eq weapons
  end

end
