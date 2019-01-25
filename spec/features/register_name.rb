featuer 'Register name' do
  scenario 'A user register his name' do
    visit('/')
    fill_in :player, with: 'Raymond'
    click_button 'Register'
    expect(page).to have_content "Raymond, welcome to the RPS game!"
  end
end
