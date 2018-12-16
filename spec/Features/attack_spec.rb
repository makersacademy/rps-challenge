# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'winner' do
  scenario 'attack Player 2' do
    click_button('rock')
    expect(page).to have_content '👊 beats'
  end
end
