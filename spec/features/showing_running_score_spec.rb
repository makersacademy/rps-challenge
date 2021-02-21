feature 'shows the running score of the games' do
  scenario 'shows the user their running tally if multiple games played' do
    sign_in_and_play
    srand(4)
    click_button("Rock")
    srand(4)
    click_button("Paper")
    srand(4)
    click_button("Scissors")
    expect(page).to have_content("The score is BIMINI BON BOULASH: 1, COMPUTER: 1")
  end
end
