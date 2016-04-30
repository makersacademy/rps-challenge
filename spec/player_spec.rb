require 'player'

describe Player do

  subject(:player) { Player.new(name)}
  let(:name) { double :name}

  # describe '#initialize' do
  #   it "initialized with the name variable" do
  #     expect(player.name).to eq name
  #   end
  # end
end
