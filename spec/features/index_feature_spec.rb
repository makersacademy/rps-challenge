feature 'Start Screen' do
  scenario 'Contains a start button' do
    visit "/"
    find_button('Start Game').click
  end

  scenario 'Start Game takes you to name entry' do
    visit "/"
    click_button 'Start Game'
    expect(page).to have_content "Enter your name"
  end
end
