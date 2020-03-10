feature 'player selects option' do

  scenario 'player 1 selects rock' do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content('Lord Looney vs. Count Catula')
  end

  scenario 'take turns' do
    sign_in_and_play
    rock_rock
    expect(page).to have_content("It's a draw!")
  end
end
