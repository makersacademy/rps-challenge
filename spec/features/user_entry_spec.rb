feature 'Index page: user entry' do

  before(:each) do
    visit '/'
  end

  scenario 'Displays game title' do
    expect(page).to have_content('Rock-Paper-Scissors-Lizard-Spock!!!')
  end
end
