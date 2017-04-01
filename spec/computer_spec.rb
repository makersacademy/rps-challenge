require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  it "returns computer's choice" do
    expect(computer.choice).not_to be_empty
  end
end
