require 'computer'

describe Computer do

  it 'can select a weapon at random' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    computer = Computer.weapon
    p computer
    expect(computer).to eq(:scissors)
  end

end
