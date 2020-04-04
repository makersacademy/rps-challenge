require 'cpu'

describe CPU do

  it 'initializes with a weapon selected' do
    expect(subject).to respond_to :weapon  
  end
end