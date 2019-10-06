feature 'Both players choose move' do
  scenario 'Both players choose a move and confirm' do
    multi_sign_in_and_play
    select 'Rock', from: 'Move 1'
    select 'Paper', from: 'Move 2'
    click_button 'Submit'
  end
end
