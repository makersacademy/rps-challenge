feature "Fight" do
  scenario "attacks the opponet with a rock" do
    register_and_play
    click_button "ROCK"
    expect(page).to have_content "Karol takes rock"
  end
end
