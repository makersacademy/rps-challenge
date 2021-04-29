require 'Player'

describe Player do
  subject(:bimini) { described_class.new("BIMINI BON BOULASH") }
  it { is_expected.to respond_to :name }

  it 'stores the player name' do
    expect(subject.name).to eq "BIMINI BON BOULASH"
  end

end
