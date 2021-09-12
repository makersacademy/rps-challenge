feature 'Gameplay' do 
  scenario 'provide options' do 
    input_name_and_play
    click_button("Start")
    #expect(page).to have_content "Choose your hand"
    expect(page).to have_button("Rock")
  end


end



