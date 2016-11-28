require 'computer'

describe Computer do

  it "is called computer" do
    expect(subject.name).to eq "Computer"
  end

  it "outputs a choice" do
    expect(subject.choose_weapon).to eq(:scissors).or(eq(:rock)).or(eq(:paper))
  end





end
