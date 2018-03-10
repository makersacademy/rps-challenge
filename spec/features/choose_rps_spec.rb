feature 'Choose RPS' do
  scenario 'Choosing Rock should be confirmed' do
    visit '/' do
      fill_in :name, with: 'Reena'
      click_button "Start Game"
      choose("Rock")
      click_button "Ready to go"
      expect(page).to have_content "Reena choose Rock"
    end
  end

  scenario "Rock is default" do
    visit "/"
    fill_in :name, with: 'Reena'
    click_button "Start Game"
    click_button "Ready to go"
    expect(page).to have_content "Reena choose Rock"
  end
end
