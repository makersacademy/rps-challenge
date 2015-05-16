require 'computer'

describe Computer do

scenario 'choses shapes' do
   computer = Computer.new
   allow(computer).to receive(:random_choice).and_return "rock"
   expect(computer.random_choice).to eq ("rock")
  end
end