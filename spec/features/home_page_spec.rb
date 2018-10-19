feature 'Home page' do

  before do
    visit('/')
  end

  scenario 'player is asked to enter name' do
    expect(page).to have_content 'Please enter your name'
  end

end
