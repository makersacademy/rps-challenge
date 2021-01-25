feature 'choose move' do
  scenario 'see confirmation' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Anna chose Rock')
  end
end
