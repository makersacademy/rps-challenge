feature 'Player can choose rock, paper, or scissors' do
    
    context 'player chooses rock' do
        scenario 'player wins' do
            allow_any_instance_of(Array).to receive(:sample).and_return 'scissors'
            sign_in_and_play
            select 'Rock', :from => 'turn'
            click_button "Play"
            expect(page).to_have content("Zish won!") 
        end
    end

    context 'player chooses rock' do
        scenario 'player loses' do
            allow_any_instance_of(Array).to receive(:sample).and_return 'paper'
            sign_in_and_play
            select 'Rock', :from => 'turn'
            click_button 'Play'
            expect(page).to_have content("Computer won!") 
        end
    end

    context 'player chooses rock' do
        scenario 'it is a draw' do
            allow_any_instance_of(Array).to receive(:sample).and_return 'rock'
            sign_in_and_play
            select 'Rock', :from => 'turn'
            click_button 'Play'
            expect(page).to_have content("It's a draw!") 
        end
    end

end