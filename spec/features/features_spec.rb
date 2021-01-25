feature 'play the game' do

    scenario 'enter name to start the game' do
        enter_name_and_play
        expect(page).to have_content 'Welcome to your game Boris'
    end

    scenario 'select rock/paper/scissors to play' do
        enter_name_and_play
        choose 'Paper'
        click_button 'Play'
        expect(page).to have_content 'Boris selected [Paper]'
    end
end