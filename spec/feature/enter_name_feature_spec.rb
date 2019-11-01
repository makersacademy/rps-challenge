feature "Rock, Paper, Scissors enter name" do
    scenario 'Can run app and check page content' do
        visit('/')
        expect(page).to have_content 'Welcome to Rock, Paper Scissors'
    end

    scenario 'Can enter name and get name displayed on screen' do 
        visit('/')
        fill_in 'name',  :with => "Rob"
        click_on 'play'
        expect(page).to have_content "Rob vs. computer"
    end
end