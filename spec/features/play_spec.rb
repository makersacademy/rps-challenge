feature 'play options' do
  scenario 'player is prompted to user one of three options' do
    enter_name_and_play
    expect(page).to have_content('muhammad, choose one of the following options')
  end


  # scenario 'player can select from 3 options' do
  #   enter_name_and_play
  #   expect(page).to have_button("rock")
  # end
end
