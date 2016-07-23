feature 'enter names' do
  scenario 'players can enter their name' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Thady has chosen Rock'
  end
end
