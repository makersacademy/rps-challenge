feature 'entering player names' do

  scenario 'submitting players names' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Dave'
  end

end
