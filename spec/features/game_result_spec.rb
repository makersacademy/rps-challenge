feature 'Calculating result of game' do
  scenario 'Works out correct result' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'You played : rock'
    if page.has_content? 'Computer played : rock'
      expect(page).to have_content "It's a draw"
    elsif page.has_content? 'Computer played : scissors'
      expect(page).to have_content "Kirk wins"
    else
      expect(page).to have_content "Computer wins"
    end
  end
end
