feature 'Enter name' do
  scenario 'submit name' do
    visit('/')
    click_button "Start Game"
    fill_in :name, with: 'Ryan'
    click_button 'Submit'
    expect(page).to have_content 'Ryan VS RPS'
  end
end
