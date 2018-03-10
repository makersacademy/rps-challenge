feature 'Entering names' do
  scenario 'User is able to enter name' do
    visit('/')
    # test is a bit vague > could also check for input field
    expect(page).to have_content('Please enter your name')
  end

  scenario 'User enters name and displays their name' do
    visit('/')
    fill_in 'name', with: 'Player 1'
    click_on 'Start game'

    expect(page).to have_content('Player 1')
  end
end
