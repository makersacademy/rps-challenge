feature 'seeing options of rock paper or scissors' do
    background do
        fill_name_and_submit
    end 
    scenario '# seeing rock button' do
        expect(page).to have_button('Rock')
    end
    scenario '# seeing paper button' do  
        expect(page).to have_button('Paper')
    end
    scenario '# seeing scissors button' do
        expect(page).to have_button('Scissors')
    end
end
    