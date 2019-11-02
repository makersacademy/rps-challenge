feature 'Enter choice' do
    scenario 'Submit the choice' do 
    visit('/')
    expect(page).to have_content 'Shubs has chosen '
    end 
end  

feature 'get names' do 
scenario "submit names when entered names"
visit('/')
expect(page).to have_content 'Shubs'
end 

# feature 'choice'
# scenario "choice to equal"
# visit('/')
# end 