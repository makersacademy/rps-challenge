require 'computer'

describe Computer do
  subject(:pc) {described_class.new}

  it "checks #random_choice returns :Rock, :Paper or :Scissors" do
    expect(pc.random_choice).to eq(:rock).or(eq(:paper).or(eq(:scissors)))
  end
end
