feature 'Display Name' do
  scenario 'Player sees their name after login' do
    sign_in_and_play
    expect(page).to have_content('Hey Leon')
  end
end

feature 'Player can play RPS' do
  scenario 'player can choose between Rock, Paper and Scissors' do
    sign_in_and_play
    click_button('ROCK')
    expect(page).to have_content('played ROCK')
  end

  scenario "#comp_choice returns 'PAPER' and displays it" do
    srand(10)
    sign_in_and_play
    click_button('ROCK')
    expect(page).to have_content('Computer has played PAPER')
  end

  scenario "Player wins the round" do
    srand(10)
    sign_in_and_play
    click_button('ROCK')
    expect(page).to have_content('The winner is Computer')
  end

  # scenario 'The play page displays previous round results' do
  #   srand(10)
  #   sign_in_and_play
  #   click_button('ROCK')
  #     expect(page).to have_content('Round 1: Leon')
  #   end

  # scenario 'Player will win the match' do
  #   srand(10)
  #   sign_in_and_play
  #   click_button('ROCK')
  #     click_button('ROCK')
  #       click_button('ROCK')
  #   expect(page).to have_content('You have won')
  # end
end
