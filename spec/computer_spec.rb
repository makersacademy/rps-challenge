require 'computer'


describe Computer do

  subject(:computer) {described_class.new}

  it "#counter_attack" do
    expect(computer).to respond_to(:counter_attack)
  end

end
