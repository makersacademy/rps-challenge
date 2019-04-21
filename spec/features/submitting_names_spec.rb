feature 'Enter name' do
  scenario 'player submits name' do
    visit('/')
    fill_in :player, with: 'Yadira'
    click_button 'Submit'
    expect(page).to have_content 'Hi, Yadira!'
  end
end
