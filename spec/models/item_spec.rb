require './app/models/item'

describe Item do

  it 'item class should have results attr' do
    expect(subject).to respond_to(:results)
  end

end
