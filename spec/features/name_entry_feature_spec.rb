require_relative '../../app'

feature 'Player registration:' do
  scenario 'Single player can register their name as Captain Kirk before playing' do
    visit '/'
    fill_in 'name', with: 'Captain Kirk'
    click_on 'Transport player to game start!'
    expect(page).to have_content "Player 1: Captain Kirk"
  end

  scenario 'Single player can register their name as Jean-Luc Picard before playing' do
    visit '/'
    fill_in 'name', with: 'Jean-Luc Picard'
    click_on 'Transport player to game start!'
    expect(page).to have_content "Player 1: Jean-Luc Picard"
  end
end
