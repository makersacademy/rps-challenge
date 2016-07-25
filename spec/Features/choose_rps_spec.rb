feature 'choose rock paper scissors' do
  scenario 'player can select an option' do
    register_player
    click_button("rock")
    expect(page).to have_content "Tim selected rock"
  end
end
