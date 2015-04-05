require './lib/game'

describe Game do
  subject { described_class.new(1) }
  let(:player) { double(:player, name: "Rob") }
  let(:auto_player) { double(:auto_player, name: "Holly") }
  let(:play_hash) { { player1: player, p1_move: :rock, player2: auto_player, p2_move: auto_player.move } }

  it 'can determine whether a player has won' do
    allow(auto_player).to receive(:move) { :scissors }
    winning_response = { draw: false,
                         winner: "Rob",
                         loser: "Holly",
                         p1: :rock,
                         verb: "blunts",
                         p2: :scissors
                       }
    expect(subject.result(play_hash)).to eq winning_response
  end

  it 'can determine whether a player has lost' do
    allow(auto_player).to receive(:move) { :paper }
    winning_response = { draw: false,
                         winner: "Holly",
                         loser: "Rob",
                         p1: :paper,
                         verb: "wraps",
                         p2: :rock
                       }
    expect(subject.result(play_hash)).to eq winning_response
  end

  it 'can determine whether a player has drawn' do
    allow(auto_player).to receive(:move) { :rock }
    winning_response = { draw: true,
                         winner: "Rob",
                         loser: "Holly",
                         p1: :rock,
                         verb: "matches",
                         p2: :rock
                       }
    expect(subject.result(play_hash)).to eq winning_response
  end
end
