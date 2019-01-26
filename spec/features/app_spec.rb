feature 'Testing:' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Rock Paper Scissors'
  end
end

feature 'Name entry:' do
  # the marketeer should be able to enter their name before the game
  scenario 'user can enter name' do
    visit('/')
    fill_in :player_1_name, with: 'Dog'
    click_button 'Submit'
    expect(page).to have_content 'Dog vs. Computer'
  end
end
