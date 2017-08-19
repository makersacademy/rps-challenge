feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Shoto Todoroki'
    # fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Shoto Todoroki'
  end
end
