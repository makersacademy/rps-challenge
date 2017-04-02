feature 'Enter Name' do
  scenario "Submitting Player's Name" do
    visit('/')
    fill_in :player_name, with: 'Jack'
    click_button 'Submit'
    expect(page).to have_content 'Jack vs. COMPUTER'
  end
end
