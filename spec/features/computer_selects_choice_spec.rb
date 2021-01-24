feature 'computer selects a choice' do
random_number = 24
    scenario'computer chooses rock' do
sign_in_and_play
click_button 'Rock'
message = find(:css, "#computer").text
expect(possible_options).to include message
end
    scenario 'computer chooses a random option' do
        sign_in_and_play
        srand(random_number)
        click_button 'Scissors'
        expect(page).to have_content 'computer selected scissors'
    end

def possible_options
    [:rock, :paper, :scissors].map { |shape| "computer selected #{shape}"}
end
end