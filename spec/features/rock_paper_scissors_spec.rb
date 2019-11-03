feature 'Rock Paper Scissors' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to the Rock-Paper-Scissors game!'
  end

#   As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

end
