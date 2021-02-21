feature 'seeing options of rock paper or scissors' do
    background do
        fill_name_and_submit
    end 
    scenario '# seeing rock button' do
        expect(page).to have_button('Rock')
    end
    scenario '# seeing paper button' do  
        expect(page).to have_button('paper')
    end
    scenario '# seeing scissors button' do
        expect(page).to have_button('scissors')
    end
end
    