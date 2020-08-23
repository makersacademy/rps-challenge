feature 'Enter name' do
    scenario 'player enters name before game and receives welcome' do
        sign_in_and_play
        expect(page).to have_content "Welcome Zish, please select rock, paper or scissors:"
    end
end