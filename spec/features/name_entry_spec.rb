feature 'Testing Name Entry' do
  scenario "Name Tom Is entered and displayed @ '/start'" do
    visit('/')
    fill_in :name, with: 'Tom'
    click_button 'Start'
    expect(page).to have_content 'Hello Tom'
  end
end
