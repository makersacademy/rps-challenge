require 'computer'

xdescribe Computer do

  it 'returns a random weapon' do
    allow(subject).to receive(:sample) { :scissors }
    expect(subject.weapon).to eq :scissors
  end
end