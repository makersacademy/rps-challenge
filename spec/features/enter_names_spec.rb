feature 'Entering names' do

  scenario 'a player enters their name and it appears on the screen' do
    sign_in
    expect(page).to have_content('Hi Emma!')
  end

end
