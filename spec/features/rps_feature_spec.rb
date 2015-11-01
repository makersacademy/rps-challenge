
feature "Rock, Paper, Scissors" do
  scenario "As a new user I would like to sign in" do
    sign_in_and_play
    expect(page).to have_content("Hello Andrew! Welcome to Rock, Paper, Scissors!")
  end
  scenario 'choose rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_content("To Play: choose Rock, Paper or Scissors!")
    click_button('Rock')
    expect(page).to have_content('Andrew chose Rock')
  end
end
