
feature 'Testing entry and display of marketeer' do

  scenario 'Test basic content when loading screen' do
    visit('/')
    expect(page).to have_content 'Enter Marketeer:'
  end

  scenario 'Test entering a marketeer' do
    visit('/')
    fill_in 'marketeer', with: 'Jane Lucas'
    click_on 'Submit'
    expect(page).to have_content 'Welcome Jane Lucas to Rock, Paper and Scissors!'
  end
  
  scenario 'Test marketeer move' do
    visit('/')
    fill_in 'marketeer', with: 'Jane Lucas'
    click_on 'Submit'
    expect(page).to have_content 'Welcome Jane Lucas to Rock, Paper and Scissors!'
    click_on 'Rock'
    expect(page).to have_content 'Jane Lucas you have chosen rock'
  end

end
