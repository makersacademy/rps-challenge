feature "Allows the player to chose the weapon" do
  scenario "player chooses Paper" do
    sign_in_and_play
    choose :paper
    click_button "Now strike!"
    expect(page).to have_content "Paper"
  end
end
