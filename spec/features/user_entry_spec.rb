feature 'Index page: user entry' do

  before(:each) do
    visit '/'
  end

  scenario '0.0. Index page displays game title' do
    expect(page).to have_content('Rock-Paper-Scissors!!!')
  end

  scenario '0.1. Index page prompts player to enter their name' do
    expect(page).to have_content('Enter your name below:')
  end
end
