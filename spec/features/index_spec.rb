feature 'Start Screen' do
  scenario 'Contains a start button' do
    visit "/"
    find_button('One Player').click
  end

  scenario 'One Player takes you to name entry' do
    visit "/"
    click_button 'One Player'
    expect(page).to have_content "Enter your name"
  end
end
