feature 'Enter names' do
  scenario 'can submit name and see it in play page' do
    sign_in_and_play
    expect(page).to have_content 'Jon'
  end
end

feature 'Shows playing buttons' do
  scenario 'shows rock button' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'ROCK')
  end
  scenario 'shows paper button' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'PAPER')
  end
  scenario 'shows scissors button' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'SCISSORS')
  end
end
