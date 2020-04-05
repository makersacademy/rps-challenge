require 'computer'

describe Computer do
  it " should be able to make a new player." do
    expect { Computer.new }.to_not raise_error
  end

  it " making a new instance of computer should have a name" do
    marvin = Computer.new
    expect(marvin).to respond_to :name
  end
end