require 'player'

describe Player do
  subject(:charly) { described_class.new('Charly') }

  describe '#name' do
  it 'should return the player\'s name' do
    expect(charly.name).to eq 'Charly'
  end
end

end
