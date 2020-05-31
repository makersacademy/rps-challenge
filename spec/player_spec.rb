require 'player'

describe Player do

 let(:player) {Player.new('Jacko')}
 it 'has a name parameter' do
  expect(player.name).to eq 'Jacko'
 end
end