require 'computer'

describe Computer do
  describe 'Computer selected weapon' do
    let(:computer) {double :computer_selection}
    it 'selects a weapon at random' do
    allow(computer).to receive(:random_selection).and_return("Scissors")
    expect(computer.random_selection).to eq "Scissors"
    end
  end
end
