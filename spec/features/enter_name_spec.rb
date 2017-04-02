feature "Enter name feature" do

  scenario 'submit name' do
      visit '/'
      fill_in 'Player 1', :with => "Spock"
      click_button("Submit")
      expect(page).to have_content('May the best hand win!')
  end

end
