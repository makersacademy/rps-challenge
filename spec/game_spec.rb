require_relative '../app.rb'

describe Game do
  let(:game) { described_class.new('Dave') }
    it "sets with the first player" do
      expect(game.player_1.name).to eq 'Dave'
    end
  end
