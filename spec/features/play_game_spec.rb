feature 'Player chooses rock, paper or scissors' do
  scenario 'page welcomes the player with their name' do 
    sign_in_and_play
    # expect(page).to have_content 'Welcome Tom! Choose paper, rock or scissors...'
  end 
end