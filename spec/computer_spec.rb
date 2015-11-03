require 'computer'

describe Computer do

  subject(:computer) { described_class.new }
  let(:weapon1) { :scissors }

  it { is_expected.to respond_to(:name)}

  it 'expects to print out the name of the choosen weapon' do
    allow(computer).to receive(:choose_rand).and_return(weapon1)
    expect(computer.choose_rand).to eq weapon1
  end

end
