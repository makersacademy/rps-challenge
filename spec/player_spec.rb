require 'player'

describe Player do
  subject(:player1) { described_class.new('Dragon Eyes') }
  subject(:player2) { described_class.new('Eagle Claw') }

  describe 'initialize' do
    it 'returns player1 name' do
      expect(player1.name).to eq 'Dragon Eyes'
    end
  end

  # describe "#damage" do
  #   it "shows new hit points value" do
  #     expect{ player2.damage }.to change{ player2.hitpoints }.by(-10)
  #   end
  # end

end
