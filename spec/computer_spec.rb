require 'computer'

describe Computer do 
  
  it 'computer should have a move' do 
    expect(subject).to respond_to(:move)
  end 
   
end 