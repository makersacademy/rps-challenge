

feature 'playing a game against the computer' do

  scenario 'Home page asks for a player name' do
    visit '/'
    expect(page).to have_content "Enter Your Name."
  end

  scenario 'After entering name, player is asked to choose a throw' do
    visit '/'
    click_button 'submit'
    expect(page).to have_content "What do you want to throw?"
  end
    
  scenario 'player can throw a weapon and get a result' do
      visit '/choose'
      fill_in('choice', with: 'Paper')
      click_button('Throw')
      expect(page).to have_content "And the result is:" 
  end

end