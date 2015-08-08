feature 'playing a game against the computer' do

  scenario 'Home page asks for a player name' do
    visit '/'
    expect(page).to have_content "Enter Your Name."
  end

  scenario 'After entering their name, player is asked to choose a throw' do
    visit '/'
    click_button 'submit'
    expect(page).to have_content "What do you want to throw?"
  end

end