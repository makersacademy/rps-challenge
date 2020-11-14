feature 'home page' do
  scenario 'it welcomes you to rps' do
    visit '/'
    click_link "I'm alone"
    expect(page).to have_content 'Welcome to rock, paper, scissors!'
  end

  scenario 'it will remind you you have no friends' do
    visit '/'
    click_link "I'm alone"
    expect(page).to have_content 'If you had a friend, their name would go here <3'
  end
end
