require 'computer'

describe Computer do

  subject(:computer) {described_class.new}

  it 'returns a choice from the array' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    expect(computer.select_choice).to eq :paper
  end

end
