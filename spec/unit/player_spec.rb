require 'player'

describe Player do
  let(:taran) { Player.new("Taran") }
  it 'responds to a name' do
    expect(taran).respond_to?(:name)
  end
end