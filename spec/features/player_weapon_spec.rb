feature 'weapon' do
  scenario 'player can choose their weapon' do
    visit("/")
    find("option[value='Rock']").click
    click_button "Fight"
  end
end
