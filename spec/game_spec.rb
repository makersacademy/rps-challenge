require 'game'

describe Game do
  subject(:game) {described_class.new player_1, player_2}
  let(:player_1) {double :player_1, gesture: :rock}
  let(:player_2) {double :player_2, gesture: :scissors}

  it 'has a player 1' do
    expect(game.player_1).to eq player_1
  end

  it 'has a player 2' do
    expect(game.player_2).to eq player_2
  end

  it 'starts at best of 3' do
    expect(game.best_of_n).to eq 3
  end

  describe "#winner" do
    context "player 1 chooses rock, player 2 chooses scissors" do
      it 'rock beats scissors' do
        expect(game.winner).to eq player_1
      end
    end

    context "player 1 chooses rock, player 2 chooses paper" do
      let(:player_2) {double :player_2, gesture: :paper}
      it 'paper beats rock' do
        expect(game.winner).to eq player_2
      end
    end

    context "player 1 chooses scissors, player 2 chooses paper" do
      let(:player_1) {double :player_1, gesture: :scissors}
      let(:player_2) {double :player_2, gesture: :paper}
      it 'scissors beat paper' do
        expect(game.winner).to eq player_1
      end
    end
  end

  describe "#allocate_points" do
    it "calls winning players add_point method" do
      expect(player_1).to receive(:add_point)
      game.allocate_points
    end
  end

  describe "#overall_winner" do
    it "returns player if score > best_of_n/2" do
      allow(player_1).to receive(:score).and_return(2)
      expect(game.overall_winner).to eq player_1
    end

    it "otherwise return nil" do
      allow(player_1).to receive(:score).and_return(1)
      allow(player_2).to receive(:score).and_return(1)
      expect(game.overall_winner).to be_nil
    end
  end

  describe "#best_of_plus_2" do
    it "increase best_of_n by 2" do
      expect{game.best_of_plus_2}.to change{game.best_of_n}.by 2
    end
  end

  context "event of a tie" do
    let(:player_1) {double :player_1, gesture: :paper}
    let(:player_2) {double :player_2, gesture: :paper}
    it 'winner retruns nil' do
      expect(game.winner).to be_nil
    end

    it 'add points returns nil' do
      expect(game.allocate_points).to be_nil
    end
  end

end
