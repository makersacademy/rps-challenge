feature 'Which version' do
  scenario 'can select a one player version' do
    visit '/'
    expect(page).to have_content "Choose your opponent!"
  end
  scenario 'a one player version can be chosen' do
    visit '/'
    expect(page).to have_button "Computer"
  end
  scenario 'a two player version can be chosen' do
    visit '/'
    expect(page).to have_button "Human"
  end
  scenario 'a player can view the rules' do
    visit '/'
    click_button "Rules"
    expect(page).to have_current_path '/rules'
  end
end
