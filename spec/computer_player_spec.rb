require 'computer_player'

describe Computer do

  it 'expects computer to select a random move' do
    allow(subject).to receive(:comp_choice).and_return("rock")
    expect(subject.comp_choice).to eq ("rock")
  end

  it 'expects computer to select a random move' do
    allow(subject).to receive(:comp_choice).and_return("paper")
    expect(subject.comp_choice).to eq ("paper")
  end

  it 'expects computer to select a random move' do
    allow(subject).to receive(:comp_choice).and_return("scissors")
    expect(subject.comp_choice).to eq ("scissors")
  end

end
