feature 'Enter name' do
  scenario 'Submit name' do
    visit('/')
    fill_in :player_name, with:'Alfonso'
    click_button "Submit"
    expect(page).to have_content 'Alfonso vs comp'
  end
end
