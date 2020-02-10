feature 'Enter names' do
  scenario "Can the app take a name and return it in a page" do
    visit('/')
    fill_in :player_1_name, with: 'Gruntilda'
    click_button 'Submit'
    expect(page).to have_content 'Gruntilda'
  end
end