require './lib/computer.rb'

describe Computer do
  let(:computer) { described_class.new }
  it "randomly chooses" do
    expect(computer.selection).to eq("R").or eq("P").or eq("S")
  end
end
