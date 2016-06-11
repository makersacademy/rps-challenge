#As a marketeer
#So that I can enjoy myself away from the daily grind
#I would like to be able to play rock/paper/scissors

feature 'Play Rock Paper Scissors' do

  scenario 'Player can select paper, rock or scissor' do
    enter_rnd_name_go_to_game
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissor')
  end

end 
