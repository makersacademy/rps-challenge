require 'computer_player'

describe Computer do

  it 'expects computer to select a random move' do
    allow(subject).to receive(:move_choice).and_return("rock")
    expect(subject.move_choice).to eq ("rock")
  end

  it 'expects computer to select a random move' do
    allow(subject).to receive(:move_choice).and_return("paper")
    expect(subject.move_choice).to eq ("paper")
  end

  it 'expects computer to select a random move' do
    allow(subject).to receive(:move_choice).and_return("scissors")
    expect(subject.move_choice).to eq ("scissors")
  end

end
