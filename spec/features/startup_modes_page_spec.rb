feature 'Choosing modes' do
  scenario 'Choosing multiplayer mode' do
    visit('/')
    click_button 'Multiplayer'
    expect(page).to have_content 'Please enter your names'
  end
end

feature 'Computer mode' do 
  scenario 'Choosing computer mode' do
    visit('/')
    click_button 'Computer'
    expect(page).to have_content 'Please enter your name'
  end
end

