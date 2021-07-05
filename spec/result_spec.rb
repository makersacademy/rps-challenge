rrequire 'result'

describe 'Result' do
  # subject(:result) { described_class.new(player_choice, opponent_choice) }
  # let(:player_choice) { { player_choice: :rock } }
  # let(:opponent_choice) { { opponent_choice: :scissors } }

  context 'Initialize' do

    it "initializes with @player_choice" do
      allow(subject).to receive(:player_choice).and_return('Rock')
      expect(subject.player_choice).to eq 'Rock'
    end

    it "initializes with @opponent_choice" do
      allow(subject).to receive(:opponent_choice).and_return('Scissors')
      expect(subject.opponent_choice).to eq 'Scissors'ra
    end
  end

  context 'result' do
    # subject(:win_result) { result }
    # subject(:lose_result) { described_class.new(lose_options) }
    # subject(:draw_result) { described_class.new(draw_options) }
    #
    # let(:lose_options) { { player_choice: :rock, opponent_choice: :scissors } }
    # let(:draw_options) { { player_choice: :rock, opponent_choice: :rock } }

    describe "win?" do

      it "returns true if @player_choice is rock and @opponent_choice is scissors" do
        allow(subject).to receive(:player_choice).and_return(:rock)
        allow(subject).to receive(:opponent_choice).and_return(:scissors)
        expect(subject.win?).to eq true
      end
    end

    describe "lose?" do

      it "returns true if @player_choice is rock and @opponent_choice is paper" do
        allow(subject).to receive(:player_choice).and_return('Rock')
        allow(subject).to receive(:opponent_choice).and_return('Paper')

        expect(subject.lose?).to eq true
      end
    end

    describe "draw?" do

      it "returns true if @player_choice is rock and @opponent_choice is rock" do
        allow(subject).to receive(:player_choice).and_return('Rock')
        allow(subject).to receive(:opponent_choice).and_return('Scissors')
        expect(subject.draw?).to eq true
      end
    end
  end
end
