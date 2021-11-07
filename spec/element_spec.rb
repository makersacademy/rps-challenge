require 'element'

describe Element do

  it 'initialises with default values if no values are passed in' do
    expect(subject.name).to eq Element::DEFAULT_NAME
    expect(subject.beats).to eq Element::DEFAULT_BEATS
    expect(subject.loses).to eq Element::DEFAULT_LOSES
    expect(subject.ties).to eq Element::DEFAULT_TIES
  end

end