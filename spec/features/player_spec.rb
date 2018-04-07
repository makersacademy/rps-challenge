feature 'Player name' do
  scenario 'Can enter a name and see it on screen' do
    sign_in_and_play
    expect(page).to have_content 'Hi Andrew, let\'s play!'
  end
end

feature 'View move choices' do
  scenario 'see what moves I can select from' do
    sign_in_and_play
    expect(page). to have_content 'Rock'
    expect(page). to have_content 'Paper'
    expect(page). to have_content 'Scissors'
  end
end
