feature 'Play again' do
  scenario 'allows user to start a new game' do
    visit '/'
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
      fill_in(:user_name, with: 'Alan')
      click_button('Submit')
      select('Rock', from: 'weapon_type')
      click_button('Play')
      click_button('Play again')
      expect(page).not_to have_content 'Computer chose rock'
      expect(page).not_to have_content 'You chose rock'
      expect(page).not_to have_content 'It\'s a draw!'
      page.should have_selector(:link_or_button, 'Play')
  end
end
