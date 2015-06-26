require 'game'

describe Game do

  it 'has players' do
    expect(subject).to respond_to(:players)
  end

end
