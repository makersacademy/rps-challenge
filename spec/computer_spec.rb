require 'computer'

RSpec.describe Computer do
  let(:computer) { Computer.new("HAL") }

  it 'initilizes with a name' do
    expect(computer.name).to eq("HAL")
  end

  it 'chooses a random move from the given options' do
    expect(['rock', 'paper', 'scissors']).to include(computer.make_move)
  end
  
end
