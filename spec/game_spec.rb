require 'game'

describe Game do
describe '.new'
  it 'instantiates the class with 2 arguments' do
    expect(subject).to respond_to(:new).with(2).arguments
  end
end
