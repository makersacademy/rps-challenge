feature 'Index page: user entry' do

  before(:each) do
    visit '/'
  end

  scenario '0.0. displays game title' do
    expect(page).to have_content('Rock-Paper-Scissors!!!')
  end
end
