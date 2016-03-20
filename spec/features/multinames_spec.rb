RSpec.feature 'multinames_spec: entering two names form:' do

  before do
    visit '/'
    click_button('Two players')
  end

  scenario '1. should have greeting' do
    expect(page).to have_content('Multiplayer mode:')
  end

  scenario '2. should have form to enter p1 name' do
    expect(page).to have_field('player_one')
  end

  scenario '3. should have form to enter p2 name' do
    expect(page).to have_field('player_two')
  end

  scenario '4. should have submit button to play game' do
    expect(page).to have_button('Play')
  end

  scenario '5. should have button to go to home page' do
    expect(page).to have_button('Home')
  end
end
