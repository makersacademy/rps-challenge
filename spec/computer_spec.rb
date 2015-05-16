require 'computer'

describe Computer do

  let(:computer) { Computer.new }

  it 'can pick a random move' do
    expect(computer).to respond_to :random_move
    computer.random_move
    expect(computer).not_to be_nil
  end

end
