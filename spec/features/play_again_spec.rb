RSpec.feature 'play again', type: :feature do
  scenario 'when a player wants another round' do
    enter_name_and_play
    click_on 'ROCK'
    click_on 'PLAY AGAIN'
    expect(page).to have_content 'choose a move'
  end
end
