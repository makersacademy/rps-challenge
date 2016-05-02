require 'machine'

describe Machine do
    subject(:machine) {described_class.new}

  it 'select a random weapon' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:ROCK)
    expect(machine.choose_weapon).to eq :ROCK
  end
end
