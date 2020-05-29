require_relative '../lib/result.rb'

describe Result do

  describe '#computer_move' do
    it "returns random choice of RPS" do
      allow_any_instance_of(Array).to receive(:sample) {"Rock"}
      expect(subject.computer_move).to eq("Rock")
    end
  end

end
