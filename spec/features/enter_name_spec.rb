
feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_1_name, with: 'Arnold'
    click_button 'Start'
    expect(page).to have_content 'Arnold vs. CPU'
  end
end
