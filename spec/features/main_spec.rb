describe 'RPS', :type => :feature do
  feature 'Testing infrastructure' do
    scenario 'Page context exist if RPS runs' do
      visit'/'
      expect(page).to have_content 'Welcome To Rock, Paper and Scissors!'
    end
  end

  feature 'User can enter the game with your name' do
    scenario 'Player is able to submit name and enter the game' do
      sign_in
      expect(page).to have_content 'Welcome Dania Are you ready to rumble?'
    end
  end
end
