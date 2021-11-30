feature 'Play rock, paper, scissor' do
  scenario 'click on rock, paper, scissor' do
    enter_name_to_play
    check 'paper'
    click_button 'did you win or lose?'
    expect(page).to have_content('play again?')
  end
end
