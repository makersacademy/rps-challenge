feature "selecting the attac" do

  scenario "player can select an Rock" do
    sign_in_and_play
    expect(page).to have_button("Rock")
  end

  scenario "player can select Paper" do
    sign_in_and_play
    expect(page).to have_button("Paper")
  end

  scenario "player can select Scissors" do
    sign_in_and_play
    expect(page).to have_button("Scissors")
  end

end
