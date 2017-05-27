require_relative '../../app'

feature 'The player wins the game' do
  scenario 'The player chooses rock and wins' do
    sign_in_and_play
    choose('Rock')
    click_button('Go!')
    expect(page).to have_content('Kye chose Rock')
    expect(page).to have_content('Computer chose Scissors')
    expect(page).to have_content('Kye wins!')
  end
end
