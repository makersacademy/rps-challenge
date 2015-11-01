
feature "Rock, Paper, Scissors" do
  scenario "As a new user I would like to sign in" do
    sign_in_and_play
    expect(page).to have_content("Hello Andrew!")
  end
  scenario 'choose rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_content("To Play: choose Rock, Paper or Scissors!")
    click_button('Rock')
    expect(page).to have_content('Andrew chose Rock')
  end
  scenario 'computer chooses rock, paper or scissors' do
    sign_in_and_play
    click_button('Rock')
    click_link("Computer's turn")
    expect(page).to have_content("Computer chose")
  end
  scenario 'A winner is declared' do
    sign_in_and_play
    click_button('Paper')
    click_link("Computer's turn")
    expect(page).to have_content("Outcome:")
  end
end
