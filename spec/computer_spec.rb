require 'computer'


describe Computer do
  let(:computer) { described_class.new }

  it 'returns a randomly-generated choice for RPS from computer' do
    allow_any_instance_of(Array).to receive(:sample) {'Rock'}
    expect(computer.choice).to eq('Rock')
  end

end
