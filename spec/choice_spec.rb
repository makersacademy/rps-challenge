require 'choice'

describe Choice do
  let(:img) { 'img' }
  let(:win) { 'win' }
  let(:name) { 'name' }
  subject { described_class.new(name, win, img) }

  it 'has a name' do
    expect(subject.name).to eq name
  end

  it 'has a win case' do
    expect(subject.win).to eq win
  end

  it 'has an image' do
    expect(subject.img).to eq img
  end

end
