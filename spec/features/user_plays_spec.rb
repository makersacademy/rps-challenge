feature 'Play' do
  before do
    visit '/'
    fill_in :player_name, with: 'Sam'
    click_button 'Submit'
  end
  scenario 'A checkbox' do
    visit '/play'

    expect(page).to have_field('move_rock', with: 'rock')
    expect(page).to have_field('move_paper', with: 'paper')
    expect(page).to have_field('move_scissors', with: 'scissors')
  end

  scenario 'user submits move and gets his move displayed' do
    visit '/play'
    expect(page).to have_selector("input[value='rock']")
    has_checked_field?('move_rock')
    #within_fieldset
    #ßclick_on 'rock'
    expect(page).to have_field('move_rock', with: 'rock')
    expect(page).to have_checked_field('rock')

  end

  scenario 'user gets you win or loose message' do
    move_index =
    expect(page).to have_selector("input[value='rock']")
    expect(page).to have_field('move_rock', with: 'rock')
    visit '/do_play'
    expect(page).to have_content('You Win').or have_content('You Lose')
  end
end
