feature 'player choice' do
    scenario 'choose rock' do
    register_and_play
    click_button('rock')
    expect(page).to have_content 'Your choice is rock'
    end

    scenario 'choose scissor' do
        register_and_play
        click_button('scissor')
        expect(page).to have_content 'Your choice is scissor'
    end

    scenario 'choose paper' do
        register_and_play
        click_button('paper')
        expect(page).to have_content 'Your choice is paper'
    end
end