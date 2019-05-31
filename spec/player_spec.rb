require 'player'

describe Player do
  let(:player) { described_class.new('Ed') }
  it 'should tell me the player name' do
    expect(player.name).to eq('Ed')
  end

  it 'should return a chosen weapon' do
    player.choose_weapon('rock')
    expect(player.weapon).to eq('rock')
  end
end
