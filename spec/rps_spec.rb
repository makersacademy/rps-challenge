require 'rps'

describe RPS do

let(:subject) {described_class.new("Tom","R")}

  describe "#initilization" do
    it 'returns a rivals move' do
      expect(subject.rival).to eq("R").or eq("P").or eq("S")
    end

    it 'returns Tom as a name' do
      expect(subject.name).to eq("Tom")
    end
  end
end