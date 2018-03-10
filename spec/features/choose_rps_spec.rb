feature 'Choose RPS' do
  scenario 'Choosing Rock' do
    visit '/' do
      fill_in :name, with: 'Reena'
      click_button "Start Game"
      choose("Rock")
      click_button "Ready to go"
      expect(page).to have_content "Reena choose Rock"
    end
  end

  scenario 'Rock is default' do
    visit '/'
    fill_in :name, with: 'Reena'
    click_button "Start Game"
    click_button "Ready to go"
    expect(page).to have_content "Reena choose Rock"
  end

  scenario 'Choosing Paper' do
    visit '/' do
      fill_in :name, with: 'Reena'
      click_button "Start Game"
      choose("Paper")
      click_button "Ready to go"
      expect(page).to have_content "Reena choose Paper"
    end
  end

  scenario 'Choosing Scissors' do
    visit '/' do
      fill_in :name, with: 'Reena'
      click_button "Start Game"
      choose("Scissors")
      click_button "Ready to go"
      expect(page).to have_content "Reena choose Scissors"
    end
  end
end
