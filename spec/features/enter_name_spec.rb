feature 'enter name' do
  scenario 'player can enter their name and see it on the screen' do
    visit '/'
    fill_in(:name, with: 'Hannah')
    click_button('Play')
    expect(page).to have_content('Welcome Hannah!')
  end
end
