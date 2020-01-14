feature 'enter name' do
  scenario 'user can enter name' do
    visit ('/')
    fill_in :player_name, with: 'Trevor'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Trevor!'
  end
end
