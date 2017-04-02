require 'computer'

describe Computer do

  subject(:computer) {described_class.new}
  
  it "The Computer has a name" do
    expect(computer.name).to eq "GLaDOS"
  end
end
