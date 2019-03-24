require_relative '../../app.rb'

xfeature 'Winner is declared' do
  scenario 'player wins' do
    fill_in_name
    srand(2)
    click_button 'Paper'
    expect(page).to have_content('You win!')
  end
end
