require 'computer'

describe Computer do
  subject(:computer){described_class.new}

  it "generates weapon at random" do
    allow(computer).to receive(:generate_weapon).and_return("Rock")
    expect(computer.generate_weapon).to eq 'Rock'
  end
end
