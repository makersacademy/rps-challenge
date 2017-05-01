feature "Game on" do

  scenario "tests for page content" do
    visit('/play')
    expect(page).to have_content "Player 1, choose your item:"
  end

  scenario "finds an item" do
    battle_commences
    visit('/play')
    expect(page).to have_content "Rock"
  end

end
