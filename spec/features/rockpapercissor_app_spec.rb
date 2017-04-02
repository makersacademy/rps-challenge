
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

  scenario "I should be able to win a game" do
    visit '/'
    fill_in('player_name', with: 'JJ')
    click_button 'Submit'
    click_button 'Rock'
    allow_any_instance_of(Computer).to receive(:choice).and_return('scissors')
    click_button "Computer's choice"
    expect(page).to have_content 'win'
  end

  scenario "I should be able to lose a game" do
    visit '/'
    fill_in('player_name', with: 'JJ')
    click_button 'Submit'
    click_button 'Rock'
    allow_any_instance_of(Computer).to receive(:choice).and_return('paper')
    click_button "Computer's choice"
    expect(page).to have_content 'lose'
  end

  scenario "I should be able to draw" do
    visit '/'
    fill_in('player_name', with: 'JJ')
    click_button 'Submit'
    click_button 'Rock'
    allow_any_instance_of(Computer).to receive(:choice).and_return('rock')
    click_button "Computer's choice"
    expect(page).to have_content 'tied'
  end

  scenario "I should be able to play a new game once I finish one" do
    visit '/'
    fill_in('player_name', with: 'JJ')
    click_button 'Submit'
    click_button 'Rock'
    click_button "Computer's choice"
    click_button "New Game"
    expect(page).to have_content "Now it's time to choose, what are you going to do ?"
  end

end
