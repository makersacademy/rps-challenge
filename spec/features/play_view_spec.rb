feature 'Shows playing buttons' do
  scenario 'shows rock button' do
    sign_in_and_play_alone
    expect(page).to have_selector(:link_or_button, 'ROCK')
  end
  scenario 'shows paper button' do
    sign_in_and_play_alone
    expect(page).to have_selector(:link_or_button, 'PAPER')
  end
  scenario 'shows scissors button' do
    sign_in_and_play_alone
    expect(page).to have_selector(:link_or_button, 'SCISSORS')
  end
end

feature 'Shows Turns' do
  scenario 'shows the name of the current turn player' do
    sign_in_and_play_alone
    expect(page).to have_content 'Jon your turn'
  end
end
