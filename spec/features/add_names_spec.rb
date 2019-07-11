feature 'enter names' do
  scenario "submitting players name" do
    visit('/')
    fill_in :player_name, with: 'Rianne'
    click_button 'Submit'
    expect(page).to have_content 'Rianne'
  end
end
