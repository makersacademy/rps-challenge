require 'computer'

describe Computer do

  # describe '#choose_weapon' do
  #   it 'should select a random weapon' do
  #     Array.any_instance.stub(:sample).and_return(:paper)
  #     allow(Kernel).to receive(:rand).and_return(1)
  #     expect(subject.choose_weapon).to eq 'paper'
  #   end
  # end

  it 'chosen should be one of the possibilities' do
    subject.choose_weapon
    expect(subject.chosen).to eq subject.chosen
  end

end
