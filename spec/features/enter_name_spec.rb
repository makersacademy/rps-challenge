feature 'Enter name' do
  scenario 'User can enter name and it will be displayed on game page' do
    visit ('/')
    fill_in :name, with: 'Elaine'
    click_button 'PLAY'
    expect(page).to have_content 'Elaine'
  end
end
