require './app'
feature 'enter names' do
    scenario 'submitting player name' do
        sign_in_and_play
        expect(page).to have_content('Ziad vs Computer')
    end
end