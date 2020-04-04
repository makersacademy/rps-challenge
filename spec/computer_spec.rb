require 'computer'

describe Computer do

  it 'responds to computer class' do
    expect(subject.go("Rock")).to eq "Rock"
  end
end
