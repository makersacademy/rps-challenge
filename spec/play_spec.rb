require 'play'

describe Play do
  let(:god) {double :god}
  describe '#game' do
    it "should return a winner" do
      allow(:god).to receive(:rock)
      allow(:user).to receive(:paper)
      expec(subject.game).to eq "Veronica wins!"
    end
  end
end
