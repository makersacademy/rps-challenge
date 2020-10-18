feature 'Name in lights' do
  scenario 'player can see the name they have entered on the screen' do
    sign_in_and_play
    expect(page).to have_content 'Beca'
  end
end

feature 'user chooses a move' do
  scenario 'user picks rock' do
    sign_in_and_play
    page.has_button? "Rock"
  end
end

feature 'user chooses a move' do
  scenario 'user picks paper' do
    sign_in_and_play
    page.has_button? "Paper"
  end
end

feature 'user chooses a move' do
  scenario 'user picks scissors' do
    sign_in_and_play
    page.has_button? "Scissors"
  end
end
