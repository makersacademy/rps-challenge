feature "selecting the attac" do

  before do
    sign_in_and_play
  end

  scenario "player can select an Rock" do
    expect(page).to have_button("Rock")
  end

  scenario "player can select Paper" do
    expect(page).to have_button("Paper")
  end

  scenario "player can select Scissors" do
    expect(page).to have_button("Scissors")
  end

end
