require 'round'

describe Round do
    subject(:round) { Round.new(player_1)}
    let(:player_1) {double(:player, name: 'Kanye', weapon_choice: :rock)}
    let(:player_2) {double(:player_2)}

  describe "Initialization" do
    it "retrieves the first player" do
    	expect(round.player_1).to eq player_1
    end
  end

  describe 'computerised opponent' do
    it 'generates a random opponent attack' do
      round.random_opponent
      expect([:rock, :paper, :scissors]).to include(round.random_opponent)
    end
  end

  describe 'Player 1 vs computer' do
    it 'Tells Player 1 they have won for rock vs scissors' do
      round.random_opponent
      expect(['Kanye', 'No-one', 'Computer']).to include(round.result)
    end
  end

end
