feature 'enter names' do
  scenario 'allows players to enter name' do
    visit '/'
    fill_in :player, with: 'Zeeshan'
    click_button 'submit'
    expect(page).to have_content("Welcome Zeeshan")
  end
end
