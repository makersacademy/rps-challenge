feature 'choice' do
  scenario 'home page should give the uesr the choice of: Rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_content("ROCK") and have_content("PAPER") and have_content("SCISSORS")
  end

  scenario 'Can view the choice you made on the next page' do
    sign_in_and_play
    choose "PAPER"
    click_button('I AM READY!')
    expect(page).to have_content('You have chosen the power of PAPER!')
  end
end