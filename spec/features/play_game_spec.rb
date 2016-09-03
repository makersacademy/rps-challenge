feature "playing Rps" do
  # presented the choices:
  #(rock, paper and scissors)
  scenario 'see rock, paper, scissor choices on page' do
    enter_name_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
