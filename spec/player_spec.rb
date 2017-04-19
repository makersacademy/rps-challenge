require 'player'

describe Player do
  subject(:rocky) {described_class.new("Rocky")}
  subject(:computer) {described_class.new("computer")}
  random_attack = ["Rock", "Paper", "Scissors"]

  describe '#name' do
    it 'returns the name' do
      expect(rocky.name).to eq "Rocky"
    end
  end

  describe '#random_attack' do
    it "does a random _rock, paper, scissors_ attack" do
      expect(["Rock", "Paper", "Scissors"]).to include(computer.random_attack)
    end
  end
end