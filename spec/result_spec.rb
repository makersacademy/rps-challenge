require 'result'

describe 'Result' do
  subject(:result) { described_class.new(player_choice, opponent_choice) }
  let(:player_choice) { { player_choice: :rock } }
  let(:opponent_choice) { { opponent_choice: :scissors } }

  context 'Initialize' do

    xit "initializes with @player_choice" do
      expect(subject.player_choice).to eq 'Rock'
    end

    xit "initializes with @opponent_choice" do
      expect(subject.opponent_choice).to eq 'Scissors'
    end
  end

  context 'result' do
    subject(:win_result) { result }
    subject(:lose_result) { described_class.new(lose_options) }
    subject(:draw_result) { described_class.new(draw_options) }

    let(:lose_options) { { player_choice: :rock, opponent_choice: :scissors } }
    let(:draw_options) { { player_choice: :rock, opponent_choice: :rock } }

    describe "win?" do

      xit "returns true if @player_choice is rock and @opponent_choice is scissors" do
        expect(win_result.win?).to eq true
      end
    end

    describe "lose?" do

      xit "returns true if @player_choice is rock and @opponent_choice is paper" do
        expect(lose_result.lose?).to eq true
      end
    end

    describe "draw?" do

      xit "returns true if @player_choice is rock and @opponent_choice is rock" do
        expect(draw_result.draw?).to eq true
      end
    end
  end
end
