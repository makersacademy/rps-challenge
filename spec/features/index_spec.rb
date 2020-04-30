feature '/' do 

  scenario 'has instructions' do 
    visit "/"
    expect(page).to have_content 'Hi, please enter your name to play Rock Paper Scissors'
  end
  
  scenario 'accepts names' do 
    play
  end
  
end
