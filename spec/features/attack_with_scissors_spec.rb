feature 'Testing attack_with_scissors' do
  scenario 'player attacks Ogruk with scissors' do
    visit '/'
    fill_in :player, with: 'Paula'
    click_button("Start the game")
    click_button("Attack with scissors")
    expect(page).to have_content("Paula attacked Ogruk with scissors")
  end

  scenario 'shows the score' do
    visit '/'
    fill_in :player, with: 'Paula'
    click_button("Start the game")
    click_button("Attack with scissors")
    expect(page).to have_content("The score is now")
  end
end
