feature 'Enter name' do
  scenario 'submitting the user name' do
    visit('/')
    fill_in :name, with: 'Sam'
    click_button 'Submit'
    expect(page).to have_content 'Sam vs. Harry the bot'
  end
end
