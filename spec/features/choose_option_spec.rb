feature 'choosing an option' do
  scenario 'three options are shown' do
    sign_in
    expect(page).to have_selector(:link_or_button, 'Play ROCK')
    expect(page).to have_selector(:link_or_button, 'Play PAPER')
    expect(page).to have_selector(:link_or_button, 'Play SCISSORS')
  end
end
