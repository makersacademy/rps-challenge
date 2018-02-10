feature "Choose weapon" do
  scenario "player chooses rock" do
    visit('/')
    fill_in :player_name, with: 'Noel'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'Noel: chose Rock'
  end
end
