require 'comp_player'

describe Computer do

  it "sometimes play rock" do
    srand(999)
    expect(subject.choice).to eq (:rock)
  end

  it "sometimes play paper" do
    srand(1001)
    expect(subject.choice).to eq (:paper)
  end

  it "sometimes play scissors" do
    srand(1004)
    expect(subject.choice).to eq (:scissors)
  end

end
