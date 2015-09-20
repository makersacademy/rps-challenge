require 'comp_player'

describe Computer do

  it "can select rock, paper or scissors" do
    expect(subject.shape).to eq(:rock).or eq(:paper).or eq(:scissors)
  end

end

  # it "sometimes play rock" do
  #   srand(999)
  #   expect(subject.shape).to eq (:rock)
  # end
  #
  # it "sometimes play paper" do
  #   srand(1001)
  #   expect(subject.shape).to eq (:paper)
  # end
  #
  # it "sometimes play scissors" do
  #   srand(1004)
  #   expect(subject.shape).to eq (:scissors)
  # end
