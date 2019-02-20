require 'computer'

RSpec.describe Computer do
  let(:computer) { Computer.new("HAL") }

  it 'initilizes with a name' do
    expect(computer.name).to eq("HAL")
  end

  it 'chooses a random move' do
    Array.any_instance.stub(:sample).and_return('rock')
    computer.make_move
    expect(computer.move).to eq('rock')
  end
  
end
