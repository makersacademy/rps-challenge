feature 'Selecting choice' do
   scenario 'Player can select Rock' do
    visit('/')
    fill_in :name, with: 'Mel'
    click_button 'Submit'
    page.select 'Rock', from: 'choice'
    click_button 'Submit'
    expect(page).to have_content 'Mel chose rock'
  end
 end
