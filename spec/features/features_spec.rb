feature 'Display Name' do
  scenario 'Player sees their name after login' do
    sign_in_and_play
    expect(page).to have_content('Hey Leon')
  end
end

feature 'Player can play RPS' do
  scenario 'player can choose between Rock, Paper and Scissors' do
    sign_in_and_play
    find_button('ROCK').click
    expect(page).to have_content('you have played ROCK')
  end

  scenario "#get_weapon returns 'PAPER' and displays it" do
    srand(10)
    sign_in_and_play
    find_button('ROCK').click
    expect(page).to have_content('machine has played PAPER')
  end

  scenario "Player wins the match" do
    srand(10)
    sign_in_and_play
    find_button('ROCK').click
    expect(page).to have_content('Oh No. The machine won')
  end
end
