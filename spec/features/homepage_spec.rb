feature 'homepage' do

  scenario 'welcomes the player' do
    visit '/'
    expect(page).to have_content "Welcome to Rock Paper Scissors"
  end

  scenario 'takes players name' do
    visit '/'
    fill_in 'name', with: 'Pete'
    click_button 'Play'
    expect(page).to have_content "Hi Pete!"
  end

end
