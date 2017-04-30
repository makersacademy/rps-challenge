feature 'Testing finish' do
  scenario 'game over' do
    visit '/'
    fill_in :player, with: 'Paula'
    click_button("Start the game")
    click_button("Attack with rock")
    click_button("Finish")
    expect(page).to have_content("Final score")
  end
end
