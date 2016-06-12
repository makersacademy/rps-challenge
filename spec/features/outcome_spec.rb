require_relative 'web_helpers'

feature 'displays the outcome' do

  COMP_ROCK = 200

  before do
    srand(COMP_ROCK)
  end

  scenario 'it displays the opponent\'s random choice' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Computer chose Scissors')
  end

  scenario 'it displays the choice' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('You chose Rock')
  end

  scenario 'it displays the winner' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('You win!')
  end
end

feature 'displays the outcome for multiplayer' do
  scenario 'it displays player 1\'s choice' do
    multi_play_sign_in
    click_button('Rock')
    click_button('Scissors')
    expect(page).to have_content('Marlon chose Rock')
  end

  scenario 'it displays player 2\'s choice' do
    multi_play_sign_in
    click_button('Rock')
    click_button('Scissors')
    expect(page).to have_content('Fred chose Scissors')
  end

  scenario 'it displays the winner' do
    multi_play_sign_in
    click_button('Rock')
    click_button('Scissors')
    expect(page).to have_content('Marlon won!')
  end
end
