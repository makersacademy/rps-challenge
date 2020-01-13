require 'game'

describe Game do

  it 'has a default choise when initialized' do
    srand(1)
    expect(subject.random_choice).to eq "Paper"
  end

  describe "#choice" do

    it 'chooses a random option' do
      srand(1)
      expect(subject.random_choice).to eq "Paper"
    end
  end

end
