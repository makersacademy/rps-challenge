# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'allows marketeer to register name', :type => :feature do
  scenario 'before playing the game' do
    visit('/')
    fill_in :name, with: 'Albert'
    click_button 'submit'
    expect(page).to have_content('Welcome Albert,')
  end
end
