feature 'Rock Paper Scissor options' do
  scenario 'player selects rock' do
    load_and_play
    select 'Rock', from: 'move'
    click_on 'Go!'
    expect(page).to have_content "You played"
  end

  # scenario 'computer random move' do
  #   load_and_play
  #   select 'Rock', from: 'move'
  #   expect(page).to have_content "Computer played"
  # end
end
