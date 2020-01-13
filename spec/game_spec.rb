require 'game'

describe Game do

  describe "#random_choice" do

    it 'chooses a random option' do
      srand(1)
      expect(subject.random_choice).to eq "Paper"
    end
  end

end
