require 'utilities_module'

describe Utilities do
  class DummyClass
  end

  before(:each) do
    @dummy_class = DummyClass.new
    @dummy_class.extend(subject)
  end

  it '#titleize' do
    expect(@dummy_class.titleize('test string')).to eq 'Test String'
  end
end
