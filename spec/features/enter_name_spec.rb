feature 'Enter name' do

  scenario 'Allows player to enter name and see it on screen' do
      log_in
      expect(page).to have_content 'Player: Prabu'
  end

end
