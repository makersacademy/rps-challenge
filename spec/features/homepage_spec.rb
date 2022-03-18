feature 'Welcome' do

  scenario 'should display a welcome message' do
    visit '/'
    expect(page).to have_content 'Rock-Paper-Scissors'
    expect(page).to have_content 'The workplace grind-ungrinder'
  end

  scenario 'should prompt the user to enter their name' do
    visit '/'
    expect(page).to have_content 'Enter your name:'
    expect(page).to have_field 'player_1'
    expect(page).to have_button 'Play!'
  end

end