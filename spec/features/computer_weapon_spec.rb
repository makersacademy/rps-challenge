feature 'Computers weapon' do
  scenario 'computer chooses a weapon' do
    visit('/')
    fill_in :player_name, with: 'Dave'
    click_button 'Submit'
    choose "Rock"
    click_button 'Submit'
    expect(page).to have_content 'Computer chose Paper'
  end
end
