require 'computer'
describe Computer do

  context 'the game will choose a random option' do
    # let(:computer) {Computer.new }

    it "checks computer has name" do
      expect(subject.name).to eq "Computer"
    end

  end

end
