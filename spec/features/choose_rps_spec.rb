feature 'choosing an option' do
  scenario 'chooses rock' do
    visit '/'
    fill_in :player_name, with: "Paul"
    click_button "Game on!"
    select 'rock', from: :choice
    click_button "Select weapon!"
    expect(page).to have_content "You chose rock!"
  end
end
