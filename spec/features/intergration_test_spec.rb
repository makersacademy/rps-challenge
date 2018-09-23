feature 'user can select a name' do
  scenario 'user visits the site and can enter their username' do
    visit('/')
    expect { fill_in('username', with: 'Nerdpuff') }.to_not raise_error
  end

  scenario 'user submits their name and is loaded into a game with that name' do
    visit('/')
    fill_in('username', with: 'Nerdpuff')
    click_button('Submit')
    expect(page).to have_content('Player one: Nerdpuff')
  end
end

feature 'user can select a move' do
  scenario 'user can click "rock"' do
    visit('/')
    fill_in('username', with: 'Nerdpuff')
    click_button('Submit')
    expect(page).to have_content('Player one: Nerdpuff')
    click_button('Rock')
    expect(page).to have_content('You chose rock')
  end

  scenario 'user can click "paper"' do
    visit('/')
    fill_in('username', with: 'Nerdpuff')
    click_button('Submit')
    expect(page).to have_content('Player one: Nerdpuff')
    click_button('Paper')
    expect(page).to have_content('You chose paper')
  end

  scenario 'user can click "scissors"' do
    visit('/')
    fill_in('username', with: 'Nerdpuff')
    click_button('Submit')
    expect(page).to have_content('Player one: Nerdpuff')
    click_button('Scissors')
    expect(page).to have_content('You chose scissors')
  end
end
