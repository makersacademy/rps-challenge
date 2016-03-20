require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'starts with a name' do
    expect(computer.name).to eq 'Computer'
  end

  it 'selects weapon' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    expect(computer.weapon).to eq :paper
  end
end
