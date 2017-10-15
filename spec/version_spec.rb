require 'version'

describe Version do
  it 'returns one player path as a string if user selects computer opponent' do
    expect(subject.version_path("Computer")).to eq '/one_player'
  end
  it 'returns two player path as a string if user selects human opponent' do
    expect(subject.version_path("Human")).to eq '/two_player'
  end
end
