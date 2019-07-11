require 'game'

describe Game do
  let(:paper) {double :paper, name: "paper"}
  let(:scissors) { double :scissors, name: "scissors", beats: true}
  let(:p1) {double :p1, weapon: scissors}
  let(:p2) {double :p2, weapon: paper}
  subject(:game) {described_class.new(p1,p2)}
  it "plays a game of RPS where p1 wins" do
    expect(game.play).to eq :p1_victory
  end
end

describe Game do
  let(:paper) {double :paper, name: "paper", beats: false}
  let(:scissors) { double :scissors, name: "scissors"}
  let(:p1) {double :p1, weapon: paper}
  let(:p2) {double :p2, weapon: scissors}
  subject(:game) {described_class.new(p1,p2)}
  it "plays a game of RPS where p2 wins" do
    expect(game.play).to eq :p2_victory
  end
end

describe Game do
  let(:scissors) { double :scissors, name: "scissors", beats: "whatever"}
  let(:p1) {double :p1, weapon: scissors}
  let(:p2) {double :p2, weapon: scissors}
  subject(:game) {described_class.new(p1,p2)}
  it "plays a game of RPS where they draw" do
    expect(game.play).to eq :draw
  end
end
