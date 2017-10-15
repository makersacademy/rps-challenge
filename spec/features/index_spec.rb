require './app'

feature RockPaperScissors do
  scenario 'Homepage content' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors!!!'
  end
end
