require 'computer'

describe Computer do

  it 'should have a selection' do
    expect(subject.selection).not_to be_empty
  end
end
