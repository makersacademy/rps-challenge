feature 'player can register name' do

  scenario 'before an online game player can enter their name' do
    visit '/'
    expect(page).to have_content 'Welcome player - please enter your name'
  end
end
