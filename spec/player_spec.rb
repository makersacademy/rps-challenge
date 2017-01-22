require "player"
describe Player do
  let(:name)   {"Name"}
  let(:choice) {"scissors"}
  let(:initialization_hash){{name:name,choice:choice}}
  let(:player) {described_class.new initialization_hash}

  it "should be able to return it's name" do
    expect(player.name).to eq name
  end
  it "should be able to return it's choice as a symbol" do
    expect(player.choice).to eq choice.downcase.to_sym
  end
end
