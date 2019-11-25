feature 'users can choose 2 players or 1 player' do
  scenario 'user choose 1player' do
    visit '/'
    click_button('1player')
    expect(page).to have_content("Player 1 name:")
    expect(page).not_to have_content("Player 2 name:")
  end

  scenario 'user chooses 2players' do
    visit '/'
    click_button('2players')
    expect(page).to have_content("Player 1 name:")
    expect(page).to have_content("Player 2 name:")
  end
end
