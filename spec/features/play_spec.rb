feature 'Play page' do

  scenario "Can enter a name and see it displayed" do
    visit("/")
    fill_in :player_name, with: "Marianne"
    click_button "Play"
    expect(page).to have_content("Marianne VS COMPUTER")
  end

end
