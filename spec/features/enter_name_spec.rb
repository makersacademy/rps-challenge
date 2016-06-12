feature 'after clicking play' do
  scenario 'name is displayed' do
    visit('/')
    fill_in :name, with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Bob'
  end
end
