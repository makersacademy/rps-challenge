feature "Player can make a choice" do
  scenario "and see the game result" do
    register_and_play
    click_button('Rock')
    expect(page).to have_content('Iryna WON')
  end
end