feature "Enter player's name" do
  scenario 'submitting the name' do
    visit('/')
    fill_in :player_name, with: 'Olly'
    click_button 'Submit'
    expect(page).to have_content 'Olly and Finn vs. Jake'
  end
end