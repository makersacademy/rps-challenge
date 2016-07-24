feature "selecting the attac" do

  scenario "player can select attack" do
    sign_in_and_play
    expect(page).to have_button("Rock")

  end
end
