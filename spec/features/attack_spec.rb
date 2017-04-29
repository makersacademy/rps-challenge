feature 'Testing attack' do
  scenario 'player attacks Ogruk' do
    visit '/'
    fill_in :player, with: 'Paula'
    click_button("Start the game")
    click_button("Attack with rock")
    expect(page).to have_content("Paula attacked Ogruk")
  end
end

feature 'Testing name' do
  scenario 'player filled in name' do
    visit '/'
    fill_in :player, with: 'Paula'
    click_button("Start the game")
    expect(page).to have_content("Paula")
  end
end
