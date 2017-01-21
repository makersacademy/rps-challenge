require './lib/computer'

describe Computer do
  subject(:computer){described_class.new}

  it "has a choice inherently" do
    srand(22)
    expect(computer.choice).to eq 'Paper'
  end

end
