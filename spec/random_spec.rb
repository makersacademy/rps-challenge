require './lib/random'

describe Random do
  it 'can generate a random rps choice' do
    random = Random.new
    expect(random.options).to eq ['rock', 'paper', 'scissors']
  end
end
