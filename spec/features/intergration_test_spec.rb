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
