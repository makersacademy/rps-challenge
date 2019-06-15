feature 'Display Name' do
  scenario 'Player sees their name after login' do
    sign_in_and_play
    expect(page).to have_content('Welcome Leon')
  end
end

feature 'Player can play RPS' do
  scenario 'player can choose between Rock, Paper and Scissors' do
    sign_in_and_play
    find_button('ROCK').click
    expect(page).to have_content('You Played ROCK')
  end
end
