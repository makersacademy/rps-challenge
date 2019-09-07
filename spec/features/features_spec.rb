describe 'website content', type: :feature do
  scenario 'Can run app and check page content' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock, Paper and Scissor!'
  end

  scenario 'display message to user input their names' do
    visit '/'
    expect(page).to have_content 'Enter your name to play:'
  end
end

describe 'add player name', type: :feature do
  scenario 'submitting names' do
    visit('/')
    fill_in "player", with: 'player'
    click_button 'Play'
    expect(page).to have_content 'player'
  end
end
