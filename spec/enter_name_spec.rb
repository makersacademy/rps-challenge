feature 'can start a 1 player game' do
  scenario 'press play' do
    visit('/')
    fill_in :playername, with: 'Mike'
    click_button 'Submit'
    expect(page).to have_content 'Play Rock Paper Scissors'
  end
end

feature 'entering your name works' do
  scenario 'enter name jim' do
    visit('/')
    fill_in :playername, with: 'Jim'
    click_button 'Submit'
    expect(page).to have_content 'Jim'
  end
end
