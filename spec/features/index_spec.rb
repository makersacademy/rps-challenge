RSpec.feature 'index_spec: Home page' do

  scenario '1. should have greeting' do
    visit '/'
    expect(page).to have_content('Lets play Rock, Paper, Scissors!')
  end

  scenario '2. should have instructions' do
    visit '/'
    expect(page).to have_content('Enter your name here:')
  end

  scenario '3. should have submit form to enter name' do
    visit '/'
    expect(page).to have_field('player')
  end

  scenario '4. should have submit button' do
    visit '/'
    expect(page).to have_button('Play')
  end

end
