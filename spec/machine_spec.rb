require "machine"

describe Machine do

subject(:machine) { Machine.new }

  it 'responds to choose_object method' do
    expect(machine).to respond_to(:choose_object)
  end

  it 'starts with default objects to choose from' do
    expect(machine.objects_to_play).to eq Machine::DEFAULT_ARRAY_OF_OBJECTS
  end

  it 'randomly chooses an object to be used in a game' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    expect(machine.choose_object).to eq "Scissors"
  end
end
