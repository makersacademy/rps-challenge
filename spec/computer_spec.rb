require 'computer'

describe Computer do

  it "outputs a fixed result" do
    expect(subject.result).to eq :scissors
  end

end
