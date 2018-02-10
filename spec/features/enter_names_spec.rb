feature "Enter names" do
  scenario "submitting names" do
    visit('/')
    fill_in :player_name, with: 'Noel'
    click_button 'Submit'
    expect(page).to have_content 'Hello Noel. Let\'s play Rock, Paper, Scissors' 
  end
end
