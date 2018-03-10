feature 'Player selects action' do
  # should I test for individual cases?
  scenario 'User is able to select paper' do
    visit('/')
    fill_in 'name', with: 'Player 1'
    click_on 'Start game'
    choose 'paper'

    expect(page).to have_checked_field('paper')
  end

  scenario 'User is able to select scissors' do
    visit('/')
    fill_in 'name', with: 'Player 1'
    click_on 'Start game'
    choose 'scissors'

    expect(page).to have_checked_field('scissors')
  end

  scenario 'User is able to select rock' do
    visit('/')
    fill_in 'name', with: 'Player 1'
    click_on 'Start game'
    choose 'rock'

    expect(page).to have_checked_field('rock')
  end

  
end
