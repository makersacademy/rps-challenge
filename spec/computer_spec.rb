require 'computer'

RSpec.describe Computer do

  it "returns a move" do
    expect(subject.choice).to eq("Rock").or eq("Paper").or eq("Scissors")
  end

end
