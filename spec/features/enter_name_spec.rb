# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'entering player names' do
  scenario 'submitting names' do
    sign_in
    expect(page).to have_content 'Alex challenges the AI overlord to a game of Rock, Paper, Scissors!'
  end
end
