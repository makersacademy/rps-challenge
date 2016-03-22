RSpec.feature 'multinames_spec: entering two names form:' do

  before do
    visit '/'
    click_button('Two players')
  end

  scenario 'should have greeting' do
    expect(page).to have_content('Multiplayer mode:')
  end

  scenario 'should have form to enter p1 name' do
    expect(page).to have_field('player_one')
  end

  scenario 'should have form to enter p2 name' do
    expect(page).to have_field('player_two')
  end

  scenario 'should have submit button to play game' do
    expect(page).to have_button('Play')
  end

  scenario 'should have button to go to home page' do
    expect(page).to have_button('Home')
  end
end
