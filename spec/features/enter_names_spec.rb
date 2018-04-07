require './app'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1, with: 'Mary'
    fill_in :player_2, with: 'Alf'
    click_button 'Submit'
    expect(page).to have_content 'Mary vs. Alf'
  end
end
