feature 'shows result' do
  scenario "prints 'You won!' if marketeer wins and 'The computer won!' if bot wins" do
    visit'/'
    fill_in('player_name', with: 'savanna')
    click_button "Let's go!"
    fill_in('player_move', with: 'rock')
    expect(page).to have_content("You won!" || "The computer won!")
  end
end
