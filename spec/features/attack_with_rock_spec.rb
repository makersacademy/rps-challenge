feature 'Testing attack' do
  scenario 'player attacks Ogruk' do
    visit '/'
    fill_in :player, with: 'Paula'
    click_button("Start the game")
    click_button("Attack with rock")
    expect(page).to have_content("Paula attacked Ogruk with a rock")
  end

  scenario 'shows the score' do
    visit '/'
    fill_in :player, with: 'Paula'
    click_button("Start the game")
    click_button("Attack with rock")
    expect(page).to have_content("Paula: 1")
  end
end
