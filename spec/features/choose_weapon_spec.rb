feature 'Weapon chooser' do
  scenario 'displays chosen weapon' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end
end
