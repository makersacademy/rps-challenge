require 'computer'

describe Computer do
  it " should be able to make a new player." do
    expect { Computer.new }.to_not raise_error
  end
end