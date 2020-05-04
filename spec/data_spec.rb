require 'data'

describe MyData do
  let(:value) { double("value", player_pick: "Test", pc: "Test", spin: "Test") }

  context '#rps_score_results' do
    it 'should store results' do
      allow(value).to receive(:player_pick) { "String" }
      allow(value).to receive(:pc) { "String" }
      expect(subject.rps_score_results(value)).to eq subject.results
    end
  end

  context '#rps_win_records' do
    it 'should add to @player_wins' do
      allow(value).to receive(:spin) { "I knew I can do it" }
      # expect{ subject.rps_win_records value }.to change{ subject.player_wins }.by(1)
    end
  end

  context '#rps_round' do
    it 'should increment by 1' do
      expect(subject.rps_round).to eq subject.rounds
    end
  end

end