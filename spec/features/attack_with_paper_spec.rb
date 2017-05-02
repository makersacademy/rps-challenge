feature 'Testing attack_with_paper' do
  scenario 'player attacks Ogruk with paper' do
    visit '/'
    fill_in :player, with: 'Paula'
    click_button("Start the game")
    click_button("Attack with paper")
    expect(page).to have_content("Paula attacked Ogruk with paper")
  end

  scenario 'shows the score' do
    visit '/'
    fill_in :player, with: 'Paula'
    click_button("Start the game")
    click_button("Attack with paper")
    expect(page).to have_content("The score is now:")
  end
end
