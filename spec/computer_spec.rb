require 'Computer'

describe Computer do
  subject(:computer) { Computer.new }

  it 'returns scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return( "Scissors")
    expect(computer.move).to eq "Scissors"
  end

  it 'returns paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return( "Paper")
    expect(computer.move).to eq "Paper"
  end

  it 'returns rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return( "Rock")
    expect(computer.move).to eq "Rock"
  end
end
