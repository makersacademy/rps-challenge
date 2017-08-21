require 'computer'

describe Computer do
  subject(:comp) { described_class.new }
  it "expects to initialize with a weapon" do
    expect(comp.weapon).to eq(:rock).or eq(:paper).or eq(:scissors)
  end

  it "expects to initialize with a name" do
    expect(comp.name).to eq("Edward Scissorhands").or eq("The Rock").or eq("Captain Paper")
  end

end
