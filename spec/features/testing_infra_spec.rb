feature 'Setting up game' do
  scenario 'Player input their names' do
    setup
    expect(page).to have_content 'Jed vs The Computer'
  end
end

feature 'Setting up game' do
  scenario 'Player input their names' do
    setup
    click_on :Play!
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end
