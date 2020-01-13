require 'Computer'

describe Computer do
  subject(:computer) { Computer.new }

  it 'returns scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return( "scissors")
    expect(computer.move).to eq "scissors"
  end
end
