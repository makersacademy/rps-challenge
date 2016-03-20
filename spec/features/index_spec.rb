RSpec.feature 'index_spec: Home page:' do

  before do
    visit '/'
  end

  scenario '1. should have greeting' do
    expect(page).to have_content('Lets play Rock, Paper, Scissors!')
  end

  scenario '2. should have single player button' do
    expect(page).to have_button('One player')
  end

  scenario '3. should have multiplayer button' do
    expect(page).to have_button('Two players')
  end


end
