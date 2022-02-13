feature 'Testing marketeer move and also opponent move' do

  scenario 'Test marketeer move' do
    visit('/')
    fill_in 'marketeer', with: 'Jane Lucas'
    click_on 'Submit'
    expect(page).to have_content 'Welcome Jane Lucas to Rock, Paper and Scissors!'
    click_on 'Rock'
    expect(page).to have_content 'Jane Lucas you have chosen rock'
  end

  scenario 'Test marketeer move and opponents move' do
    visit('/')
    fill_in 'marketeer', with: 'Jane Lucas'
    click_on 'Submit'
    expect(page).to have_content 'Welcome Jane Lucas to Rock, Paper and Scissors!'
    click_on 'Rock'
    expect(page).to have_content 'Jane Lucas you have chosen rock'
    expect(page).to have_content 'Angelica Pickles you have chosen'
  end

end
