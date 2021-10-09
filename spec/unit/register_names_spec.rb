require 'game'

describe Game do 
  it 'asks each player to register their name' do 
    register_name_before_play
    expect(subject.register_name_before_play).to eq 'Cat'
  end
end 


