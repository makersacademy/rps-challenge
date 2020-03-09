require 'result'

describe 'Result' do
  # subject(:result) { described_class.new(player_choice, opponent_choice) }
  # let(:player_choice) { { player_choice: :rock } }
  # let(:opponent_choice) { { opponent_choice: :scissors } }

  context 'Initialize' do

<<<<<<< HEAD
    it "initializes with @player_choice" do
      allow(subject).to receive(:player_choice).and_return('Rock')
      expect(subject.player_choice).to eq 'Rock'
    end

    it "initializes with @opponent_choice" do
      allow(subject).to receive(:opponent_choice).and_return('Scissors')
      expect(subject.opponent_choice).to eq 'Scissors'ra
=======
    xit "initializes with @player_choice" do
      expect(subject.player_choice).to eq 'Rock'
    end

    xit "initializes with @opponent_choice" do
      expect(subject.opponent_choice).to eq 'Scissors'
>>>>>>> b54132d51bc2ee77484b0c4c10c274fc55d57d3d
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

<<<<<<< HEAD
      it "returns true if @player_choice is rock and @opponent_choice is scissors" do
        allow(subject).to receive(:player_choice).and_return(:rock)
        allow(subject).to receive(:opponent_choice).and_return(:scissors)
        expect(subject.win?).to eq true
=======
      xit "returns true if @player_choice is rock and @opponent_choice is scissors" do
        expect(win_result.win?).to eq true
>>>>>>> b54132d51bc2ee77484b0c4c10c274fc55d57d3d
      end
    end

    describe "lose?" do

<<<<<<< HEAD
      it "returns true if @player_choice is rock and @opponent_choice is paper" do
        allow(subject).to receive(:player_choice).and_return('Rock')
        allow(subject).to receive(:opponent_choice).and_return('Paper')

        expect(subject.lose?).to eq true
=======
      xit "returns true if @player_choice is rock and @opponent_choice is paper" do
        expect(lose_result.lose?).to eq true
>>>>>>> b54132d51bc2ee77484b0c4c10c274fc55d57d3d
      end
    end

    describe "draw?" do

<<<<<<< HEAD
      it "returns true if @player_choice is rock and @opponent_choice is rock" do
        allow(subject).to receive(:player_choice).and_return('Rock')
        allow(subject).to receive(:opponent_choice).and_return('Scissors')
        expect(subject.draw?).to eq true
=======
      xit "returns true if @player_choice is rock and @opponent_choice is rock" do
        expect(draw_result.draw?).to eq true
>>>>>>> b54132d51bc2ee77484b0c4c10c274fc55d57d3d
      end
    end
  end
end
