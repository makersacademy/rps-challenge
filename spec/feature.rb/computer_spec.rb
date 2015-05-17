require 'computer'

describe Computer do
   it 'choses shapes' do
   computer = Computer.new
   allow(computer).to receive(:random_choice).and_return "rock"
   expect(computer.random_choice).to eq ("rock")
  end
end