feature 'Play the game' do
    scenario 'play against computer, when I submit rock I am told I have won' do
        allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
        sign_in_and_play
        click_button('rock')
       expect(page).to have_content "The result is .. You won"
    end 
end
