require './lib/ai'
describe AI do

  it 'has a choose method' do
    expect(subject).to respond_to :choose
  end

  it 'can choose randomly' do
    allow(subject).to receive(:choose) {:Paper}
    expect(subject.choose).to eq :Paper
  end
end
