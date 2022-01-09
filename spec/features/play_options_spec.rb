feature "Game Play Options" do
    let(:weapon) {Computer::MOVEMENTS}
    scenario "show weapons" do
        register_and_play
        expect(page).to have_button('Rock')
        expect(page).to have_button('Paper')
        expect(page).to have_button('Scissors')
    end

    scenario 'choose a weapon' do
        register_and_play
        click_button 'Rock'
        expect(page).to have_content 'Your chooice: Rock'
    end

    scenario 'computer choose random weapon' do
        register_and_play
        click_button('Rock')
        allow(weapon).to receive(:sample).and_return([:Rock])
        
        
    end
end