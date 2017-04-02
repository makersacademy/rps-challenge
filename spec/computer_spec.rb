require 'computer'

describe Computer do
  subject(:pc) {described_class.new}
  it 'check starting choice is nil' do
    expect(pc.choice).to eq nil
  end

  it "checks #random_choice returns :Rock, :Paper or :Scissors" do
    pc.random_choice
    expect(pc.choice).to eq(:rock).or(eq(:paper).or(eq(:scissors)))
  end
end
