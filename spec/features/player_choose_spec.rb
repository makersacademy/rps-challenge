RSpec.feature 'game play' do
  scenario 'player one chooses weapon' do
    register
    click_link ('Play')
    expect(page).to have_text('Vicky: choose your weapon')
    expect(page).to have_button('Rock')
  end

  scenario 'player two chooses weapon' do
    register
    click_link ('Play')
    click_on('Rock')
    expect(page).to have_content('Tim: choose your weapon')
    expect(page).to have_button('Paper')
  end
end
