require 'game'
require 'player'

describe Game do

  describe "#record_player_1_choice" do
    it "show player 1 choice"  do
      subject.record_player_1_choice('paper')
      expect(subject.choice).to eq('paper')

    end
  end

  describe "#automatic_choice" do
    before do
      allow(subject).to receive(:automatic_choice).and_return('rock')
    end

    it "show automatic player choice"  do
      expect(subject.record_automatic_player_choice).to eq('rock')
    end
  end

  describe "#result" do
    before do
      allow(subject).to receive(:automatic_choice).and_return('rock')
    end

    it "show result"  do
      subject.record_player_1_choice('paper')
      subject.record_automatic_player_choice

      expect(subject.result).to eq('win')
    end
   end

   describe "#result" do
     before do
       allow(subject).to receive(:automatic_choice).and_return('rock')
     end

     it "show result"  do
       subject.record_player_1_choice('scissor')
       subject.record_automatic_player_choice

       expect(subject.result).to eq('lost')
     end
    end

    describe "#result" do
      before do
        allow(subject).to receive(:automatic_choice).and_return('rock')
      end

      it "show result"  do
        subject.record_player_1_choice('rock')
        subject.record_automatic_player_choice

        expect(subject.result).to eq('draw')
      end
     end


end
