feature "finds the result of the game" do

  scenario "can find the result of the game" do
    battle_commences
    visit('/result')
    expect(page).to have_content "Chris"
  end
end
