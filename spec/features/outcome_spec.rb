feature 'Display the result of a game' do
  scenario 'User chooses a move' do
    sign_in_and_submit
    select 'Rock', from: 'weapon'
    click_button('Play')
    expect(page).to have_content 'Sheldon chose rock!'
  end

  scenario 'Computer chooses a move' do
    sign_in_and_submit
    select 'Paper', from: 'weapon'
    click_button('Play')
    expect(page).to have_content 'Computer chose paper!'
  end
end
