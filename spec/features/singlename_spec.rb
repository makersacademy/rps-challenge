RSpec.feature 'singlename_spec: enter one name form:' do

  before do
    visit '/'
    click_button('One player')
  end

  scenario 'should have greeting' do
    expect(page).to have_content('Single player mode:')
  end

  scenario 'should have form to enter name' do
    expect(page).to have_field('player_one')
  end

  scenario 'should have submit button' do
    expect(page).to have_button('Play')
  end

  scenario 'should have button to go to home page' do
    expect(page).to have_button('Home')
  end
end
