require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  it "#result" do
    expect(computer.result).to eq("Rock").or eq("Paper").or eq("Scissors")
  end
end
