require 'rps'

describe RPS do
  subject(:rps){ described_class.new(name) }
  let(:name) { "Test name" }
  let(:human_choice){ "Paper" }
  describe "#name" do
    it 'takes a name in #new' do
      expect(rps.name).to be(name)
    end
  end
  
  describe "#choose" do
    it "chooses Rock, Paper, Or Scissors" do
      choices = ['Rock', 'Paper', 'Scissors']
      expect(choices).to include(rps.choose)
    end
  end

  describe "#who_wins(human_choice)" do
    it "wins" do
      allow(rps).to receive(:choice).and_return('Rock')
      expect(rps.who_wins(human_choice)).to eq("Human is Winner")
    end
  end

end

