require 'computer'

describe Computer do

  it 'can choose rock, paper or scissors' do
    computer = Computer.new
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    computer.make_a_choice
    expect(computer.choice).to eq("Rock")
  end

end
