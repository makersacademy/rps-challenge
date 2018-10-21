feature "Start game" do
  scenario "Step 1 - Enter names" do
    visit('/')
    fill_in :player_1_name, with: 'Edyta'
    fill_in :player_2_name, with: 'Caio'
    click_button 'Submit'
    expect(page).to have_content 'Edyta vs Caio'
  end
end
