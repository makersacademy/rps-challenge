require './app'

feature 'Winner is declared' do
  scenario 'player chooses paper and computer chooses rock' do
    fill_in_name
    srand(2)
    click_button 'Paper'
    expect(page).to have_content('You win!')
  end

  scenario 'computer chooses paper and player chooses rock' do
    fill_in_name
    srand(1)
    click_button 'Rock'
    expect(page).to have_content('Computer wins!')
  end
end

feature 'Players draw' do
  scenario 'player and computer both choose rock' do
    fill_in_name
    srand(2)
    click_button 'Rock'
    expect(page).to have_content("It's a draw!")
  end
end
