
feature 'Testing entry and display of player' do

  scenario 'Test basic content when loading screen' do
    visit('/')
    expect(page).to have_content 'Please enter your name to begin a game'
  end

  scenario 'Test entering a player' do
    visit('/')
    fill_in 'marketeer', with: 'Jane Lucas'
    click_on 'Submit'
    expect(page).to have_content 'Welcome to Rock, Paper and Scissors'
    expect(page).to have_content 'Jane Lucas!'
  end
  
  scenario 'Test player entering a choice' do
    visit('/')
    fill_in 'marketeer', with: 'Jane Lucas'
    click_on 'Submit'
    expect(page).to have_content 'Welcome to Rock, Paper and Scissors'
    expect(page).to have_content 'Jane Lucas!'
    find('form').choose('Rock')
    visit('/playgame')
    expect(page).to have_content 'Jane Lucas you have chosen rock'
  end

end
