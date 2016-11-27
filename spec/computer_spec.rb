require 'computer'


describe Computer do

  subject(:computer) {described_class.new}



  it "returns a defense from weapons array" do
    expect(described_class::WEAPONS).to include computer.counter_attack
  end

end
