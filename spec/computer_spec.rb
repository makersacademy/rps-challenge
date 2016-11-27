require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it "has can return it's name" do
    expect(computer.name).to eq "Computer"
  end
end
