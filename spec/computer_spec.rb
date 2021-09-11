require 'computer'
describe Computer do

  context 'the game will choose a random option' do

    it "checks computer has name" do
      expect(subject.name).to eq "Computer"
    end

    it "returns rock, paper or scissors" do
      allow(subject).to receive(:choose).and_return("scissors")
      expect(subject.choose).to eq "scissors"
    end

  end

end
