require './app'

feature 'Player Name Submission' do 
  scenario 'Player can submit their name and see on screen' do 
    sign_in_and_play
    expect(page).to have_content('Josh')
  end 
end 
