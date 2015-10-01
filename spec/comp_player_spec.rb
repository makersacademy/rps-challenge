require 'comp_player'

describe Computer do

  it "can select rock, paper or scissors" do
    expect(subject.shape).to eq(:rock).or eq(:paper).or eq(:scissors).or eq(:lizard).or eq(:spock)
  end

end
