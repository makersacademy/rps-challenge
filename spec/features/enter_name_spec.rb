feature 'Enter name' do
  scenario 'Can submit name' do
    visit('/')
    fill_in :name, with: 'Mel'
    click_button 'Submit'
    expect(page).to have_content 'Player: Mel'
  end
end
