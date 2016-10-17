feature 'Choose' do
    xscenario 'Can click on a choice that takes you to another page with that image' do
      visit "/"
      fill_in :player1, with: 'Katy'
      click_button "Play"
      click_button "Rock"
      expect(page).to have_xpath("//img[@src='http://weknowyourdreams.com/images/rock/rock-08.jpg']")
  end

end
