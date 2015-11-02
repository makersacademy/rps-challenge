require 'computer'

describe Computer do

  subject(:computer) { described_class.new }
  let(:weapon) { :scissors }

  it { is_expected.to respond_to(:choose_rand_weapon) }

  it 'expects to print out the name of the choosen weapon' do
    # srand(361
    allow(computer).to receive(:choose_rand_weapon).and_return(weapon)
    expect(computer.choose_rand_weapon).to eq weapon
  end

end
