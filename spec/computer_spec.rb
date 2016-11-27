require 'computer'

describe Computer do

  it "is called computer" do
    expect(subject.name).to eq "Computer"
  end

  it "outputs a fixed choice" do
    expect(subject.choice).to eq :scissors
  end

end
