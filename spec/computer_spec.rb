require 'computer'

describe Computer do

  it "is called computer" do
    expect(subject.name).to eq "Computer"
  end
    
  it "outputs a fixed result" do
    expect(subject.result).to eq :scissors
  end

end
