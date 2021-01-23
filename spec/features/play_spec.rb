feature 'playing a game' do
  scenario 'see shape options' do
    sign_in_and_submit
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario "choose a shape" do
    sign_in_and_submit
    click_button "Rock"
    expect(page).to have_content "You chose Rock!"
  end

  scenario "game to chose an option" do
    sign_in_and_submit
    click_button "Rock"
    message = find(:css, "#opponent").text.strip
    expect(possible_messages).to include message
  end
end
