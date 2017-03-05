require 'computer'

describe Computer do
  it "responds to the selection method" do
    expect(Computer.new).to respond_to{selection}
  end

  xit "returns an element from its array" do
    expect(Computer.new.selection).to eq(an_instance_of(Symbol))
  end
end
