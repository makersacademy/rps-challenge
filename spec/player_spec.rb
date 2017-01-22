require 'player'

describe Player do
  subject(:player) {described_class.new(:name)}
  let(:name) {double :name}

  describe 'defaults' do
    it {is_expected.to respond_to(:name)}
    it {is_expected.to respond_to(:wins)}
  end

  describe "#wins" do
    it {is_expected.to respond_to(:win)}
    it "changes win to true" do
      player.wins
      expect(player.win).to eq true
    end
  end

  describe "#draws" do
    it {is_expected.to respond_to(:draws)}
    it "changes draws to true" do
      player.draws
      expect(player.draw).to eq true
    end
  end

  describe "reset" do
    it "changes the win and draw status" do
      player.reset
      expect(player.win).to eq nil
      expect(player.draw).to eq nil
    end
  end
end
