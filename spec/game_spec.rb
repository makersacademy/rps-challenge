require 'game'

describe Game do
  subject(:game) { described_class.new(args) }
  let(:args) { {'human_player_name' => 'Jose', 'human_player_choice' => :PAPER, 'bot_choice' => :ROCK} }

  describe '#human_player_name' do
    it "returns the human's name" do
      expect(game.human_player_name).to eq 'Jose'
    end
  end

  describe '#human_player_choice' do
    it "returns the human's choice of hand gesture" do
      expect(game.human_player_choice).to eq :PAPER
    end
  end

  describe '#bot_choice' do
    it "returns the bot of doom's hand gesture choice" do
      expect(game.bot_choice).to eq :ROCK
    end
  end
end
