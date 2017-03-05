RSpec.feature 'result' do
  scenario 'draw' do
    register
    click_link ('Play')
    click_on('Rock')
    click_on('Rock')
    expect(page).to have_content("draw")
  end

  scenario 'player 1 win' do
    register
    click_link ('Play')
    click_on('Rock')
    click_on('Scissors')
    expect(page).to have_content("Vicky wins")
  end

  scenario 'player 2 win' do
    register
    click_link ('Play')
    click_on('Rock')
    click_on('Paper')
    expect(page).to have_content("Tim wins")
  end
end
