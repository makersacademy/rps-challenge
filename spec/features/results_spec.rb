require_relative '../../app.rb'

feature 'Winner is declared' do
  scenario 'player choses paper and computer chooses rock' do
    fill_in_name
    srand(2)
    click_button 'Paper'
    expect(page).to have_content('You win!')
  end
end
