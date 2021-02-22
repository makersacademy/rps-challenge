feature 'results page' do
    background do
        fill_name_and_submit
        click_button 'Rock'
    end

    # scenario 'the user wins and is shown the choices' do
    #     expect(page).to have_content 'Your choice: Rock'
    #     expect(page).to have_content 'Computer chose:'
    # end
    
    # scenario 'the user wins and is told they won' do
    #     expect(page).to have_content 'Result:'
    # end
end
