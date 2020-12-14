feature 'player receives outcome of game' do
  scenario 'player chooses Rock' do
    sign_in_and_play
    click_button("Rock")
    visit('/rock')
    expect(page).not_to have_content("Are you ready!? Let's play!")
  end

  scenario 'player chooses Rock' do
    sign_in_and_play
    click_button("Paper")
    visit('/paper')
    expect(page).not_to have_content("Are you ready!? Let's play!")
  end

  scenario 'player chooses Rock' do
    sign_in_and_play
    click_button("Scissors")
    visit('/scissors')
    expect(page).not_to have_content("Are you ready!? Let's play!")
  end
end
