# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Enter names' do
  
  scenario 'the user can submit their name' do
    sign_in_and_play
    expect(page).to have_content 'Hello Player 1, are you ready to play?'
  end

end