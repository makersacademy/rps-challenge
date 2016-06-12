require_relative 'web_helpers'

feature 'displays the outcome' do
  scenario 'it displays the opponent\'s random choice' do
    sign_in_and_play
    srand(200)
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
    srand(200)
    click_button('Rock')
    expect(page).to have_content('You win!')
  end
end
