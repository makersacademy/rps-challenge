
feature "Testing the App" do

  scenario "Ask for a player name and save it" do
    visit '/'
    fill_in('player_name', with: 'JJ')
    click_button 'Submit'
    expect(page).to have_content 'JJ'
  end

  scenario "I want to be able to choose rock" do
    visit '/'
    fill_in('player_name', with: 'JJ')
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'You decided to go for rock'
  end

  scenario "I want to be able to choose scissors" do
    visit '/'
    fill_in('player_name', with: 'JJ')
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content 'You decided to go for scissors'
  end

  scenario "The computer should be able to make his choice" do
    visit '/'
    fill_in('player_name', with: 'JJ')
    click_button 'Submit'
    click_button 'Rock'
    click_button "Computer's choice"
    expect(page).to have_content 'GLaDOS chose'
  end

end
