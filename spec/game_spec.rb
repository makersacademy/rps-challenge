require 'game'

describe Game do
  subject(:game) {described_class.new player_rock, player_scissors}
  let(:player_rock) {double :player_rock, gesture: :rock}
  let(:player_scissors) {double :player_scissors, gesture: :scissors}
  let(:player_paper) {double :player_paper, gesture: :paper}
  let(:player_spock) {double :player_spock, gesture: :spock}
  let(:player_lizard) {double :player_lizard, gesture: :lizard}

  it 'has a player 1' do
    expect(game.player_1).to eq player_rock
  end
  it 'has a player 2' do
    expect(game.player_2).to eq player_scissors
  end
  it 'starts at best of 3' do
    expect(game.best_of_n).to eq 3
  end
  it 'not spock and lizard as default' do
    expect(game.spock_and_lizard).to be false
  end

  describe "#winner" do
    it 'rock beats scissors' do
      expect(game.winner).to eq player_rock
    end
    it 'rock beats lizard' do
      game = Game.new player_rock, player_lizard
      expect(game.winner).to eq player_rock
    end
    it 'scissors beats paper' do
      game = Game.new player_scissors, player_paper
      expect(game.winner).to eq player_scissors
    end
    it 'scissors beats lizard' do
      game = Game.new player_scissors, player_lizard
      expect(game.winner).to eq player_scissors
    end
    it 'paper beats rock' do
      game = Game.new player_paper, player_rock
      expect(game.winner).to eq player_paper
    end
    it 'paper beats spock' do
      game = Game.new player_paper, player_spock
      expect(game.winner).to eq player_paper
    end
    it 'spock beats rock' do
      game = Game.new player_spock, player_rock
      expect(game.winner).to eq player_spock
    end
    it 'spock beats scissors' do
      game = Game.new player_spock, player_scissors
      expect(game.winner).to eq player_spock
    end
    it 'lizard beats paper' do
      game = Game.new player_lizard, player_paper
      expect(game.winner).to eq player_lizard
    end
    it 'lizard beats spock' do
      game = Game.new player_lizard, player_spock
      expect(game.winner).to eq player_lizard
    end
  end

  describe "#allocate_points" do
    it "calls winning players add_point method" do
      expect(player_rock).to receive(:add_point)
      game.allocate_points
    end
  end

  describe "#overall_winner" do
    it "returns player if score > best_of_n/2" do
      allow(player_rock).to receive(:score).and_return(2)
      expect(game.overall_winner).to eq player_rock
    end
    it "otherwise return nil" do
      allow(player_rock).to receive(:score).and_return(1)
      allow(player_scissors).to receive(:score).and_return(1)
      expect(game.overall_winner).to be_nil
    end
  end

  describe "#best_of_plus_2" do
    it "increase best_of_n by 2" do
      expect{game.best_of_plus_2}.to change{game.best_of_n}.by 2
    end
  end

  context "event of a tie" do
    it 'winner retruns nil' do
      tie = Game.new player_paper, player_paper
      expect(tie.winner).to be_nil
    end
    it 'add points returns nil' do
      tie = Game.new player_paper, player_paper
      expect(tie.allocate_points).to be_nil
    end
  end
end
