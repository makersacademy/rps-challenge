require 'player'

describe Player do

let(:player) { Player.new('Count Catula') }
describe 'name' do
  it 'returns its name' do
    expect(player.name).to eq 'Count Catula'
  end
end

end
