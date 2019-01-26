require 'computer'

describe Computer do
  it 'receives choice' do
  player = Computer.new
  expect(player.choice).to eq(:Rock)
  end
end
