require './lib/game'

describe Game do

  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }
  let(:player_3) { double(:player) }
  let(:player_4) { double(:player) }
  let(:game) { described_class.new(player_1, player_2) }

  before do
    allow(player_1).to receive_messages(:name => "Pietro", :choice => :rock)
    allow(player_2).to receive_messages(:name => "Andrea", :choice => :scissors)
    allow(player_3).to receive_messages(:name => "Jessica", :choice => :rock)
    allow(player_4).to receive_messages(:name => "Thierry", :choice => :paper)
  end

  context 'set-up' do

    it 'can read its player name attribute' do
      expect(game.player_1.name).to eq "Pietro"
    end

    it 'can read its player choice attribute' do
      expect(game.player_1.choice).to eq :rock
    end

  end

  context 'outcome' do

    it 'can correctly determine a winner' do
      expect(game.who_won(player_1, player_2)).to eq player_1.name
    end

    it 'can correctly determine a winner' do
      expect(game.who_won(player_1, player_4)).to eq player_4.name
    end

    it 'can correctly determine a draw' do
      expect(game.who_won(player_1, player_3)).to eq :draw
    end

  end

end
