feature 'users can choose 2p or 1p' do
  scenario 'user choose 1p' do
    visit '/'
    click_button('1p')
    expect(page).to have_content("Player 1 name:")
    expect(page).not_to have_content("Player 2 name:")
  end

  scenario 'user chooses 2p' do
    visit '/'
    click_button('2p')
    expect(page).to have_content("Player 1 name:")
    expect(page).to have_content("Player 2 name:")
  end
end