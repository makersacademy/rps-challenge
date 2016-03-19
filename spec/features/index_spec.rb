RSpec.feature 'index_spec: Home page' do

  before do
    visit '/'
  end

  scenario '1. should have greeting' do
    expect(page).to have_content('Lets play Rock, Paper, Scissors!')
  end

  scenario '2. should have instructions' do
    expect(page).to have_content('Enter your name here:')
  end

  scenario '3. should have submit form to enter name' do
    expect(page).to have_field('player')
  end

  scenario '4. should have submit button' do
    expect(page).to have_button('Play')
  end

end
