feature 'name' do
  scenario 'enter name and save it' do
    visit('/')
    fill_in :name, with: 'Rocky'
    click_button 'Submit'
    expect(page).to have_content 'Rocky'
  end
end
