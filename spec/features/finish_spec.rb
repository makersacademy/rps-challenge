feature 'Testing finish' do
  scenario 'game over' do
    visit '/'
    fill_in :player, with: 'Paula'
    click_button("Start the game")
    click_button("Attack with rock")
    4.times{ click_button("Attack with rock") }
    expect(page).to have_content("The winner is")
  end
end
