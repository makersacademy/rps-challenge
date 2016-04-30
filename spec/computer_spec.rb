require 'computer'
subject(:computer) {described_class.new}

describe Computer do

  it{is_expected.to respond_to(:choose)}

  # it 'should be able to choose an action' do
  #   expect(computer.choose).to eq()
  # end
end
