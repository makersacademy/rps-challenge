require 'computer'

describe Computer do
  it " should be able to make a new player." do
    expect { Computer.new }.to_not raise_error
  end

  it " making a new instance of computer should have a name" do
    marvin = Computer.new
    expect(marvin).to respond_to :name
  end
  it " Computer should be able to pick a weapon" do
    marvin = Computer.new
    expect(marvin).to respond_to(:weapon).with(1).argument
  end
end