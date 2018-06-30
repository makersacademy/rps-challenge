# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Signing in' do
  scenario 'see your name after signing in' do
    visit '/'
    fill_in :name, with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content 'Bob'
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
