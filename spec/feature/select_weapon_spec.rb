feature 'display RPS' do
  scenario 'give the possibility to choose a weapon(rps)' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissor')
  end
end
