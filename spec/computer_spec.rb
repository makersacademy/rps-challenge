require 'computer'

describe Computer do

  let(:computer){Computer.new}

  it "has the name 'Computer'" do
    expect(computer.name).to eq "Computer"
  end

end