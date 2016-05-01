require 'game'

describe Game do
  subject(:game) {described_class.new player_1, player_2}
  let(:player_1) {double :player_1, weapon: :rock}
  let(:player_2) {double :player_2, weapon: :scissors}

  it 'has a player 1' do
    expect(game.player_1).to eq player_1
  end

  it 'has a player 2' do
    expect(game.player_2).to eq player_2
  end

  describe "#winner" do
    context "player 1 chooses rock, player 2 chooses scissors" do
      it 'rock beats scissors' do
        expect(game.winner).to eq player_1
      end
    end

    context "player 1 chooses rock, player 2 chooses paper" do
      let(:player_2) {double :player_2, weapon: :paper}
      it 'paper beats rock' do
        expect(game.winner).to eq player_2
      end
    end

    context "player 1 chooses scissors, player 2 chooses paper" do
      let(:player_1) {double :player_1, weapon: :scissors}
      let(:player_2) {double :player_2, weapon: :paper}
      it 'scissors beat paper' do
        expect(game.winner).to eq player_1
      end
    end

    context "same weapon choosen" do
      let(:player_1) {double :player_1, weapon: :paper}
      let(:player_2) {double :player_2, weapon: :paper}
      it 'returns nil' do
        expect(game.winner).to be_nil
      end
    end
  end

end
