feature "Enter player name" do
  scenario "submitted name should appear on screen" do
    visit '/'
    fill_in(:player_name, with: "Imtiyaz")
    click_button 'Submit'
    expect(page).to have_content "Imtiyaz vs Computer"
  end
end
