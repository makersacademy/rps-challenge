feature "players draw" do
  scenario "It draws if both players select the same weapon" do
    sign_in_and_play
    click_button("Rock")
    click_button("Rock")
    expect(page).to have_content "Jordan selected Rock & Kyle Rock The winner is.... It's a draw!"
  end
end
