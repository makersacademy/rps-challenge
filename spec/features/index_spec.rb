feature 'Enter names' do
  scenario 'to submit names' do
    visit('/')
    fill_in :player1_name, with: 'Emily'
    click_button 'Enter Game'

    expect(page).to have_content "Emily"
  end
end