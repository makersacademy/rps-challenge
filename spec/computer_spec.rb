require 'computer'

describe Computer do

  it 'responds to computer class' do
    srand(2)
    expect(subject.computer_turn).to eq "Rock"
  end
end
