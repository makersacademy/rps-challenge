feature "Player can choose which weapon to play" do
  scenario "Player can click a button to play" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Holden Caulfield played Rock"
  end
end
