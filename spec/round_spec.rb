require_relative '../lib/round'

describe Round do

  let(:a_first_player) { double :player }
  let(:another_player) { double :player }
  let(:round) { described_class.new }

  # describe '#initialize' do

  # end

  describe '#selection' do
    it "add's a player's selection to round selections" do
      round.selection(a_first_player, :rock)
      expect(round.selections).to include({
        player: a_first_player,
        selection: :rock
      })
    end

  end

  describe '#determine_round_winner' do
    it "determines the winner from selections for the round" do
      round.selection(a_first_player, :rock)
      round.selection(another_player, :paper)
      expect(round.determine_round_winner).to eq another_player
    end

  end
end