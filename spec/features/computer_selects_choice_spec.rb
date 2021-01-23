feature 'game selects a choice' do
scenario'game chooses rock' do
sign_in_and_play
click_button 'Rock'
message = find(:css, "#computer").text.strip
expect(possible_options).to include message
end
def possible_options
    [:rock, :paper, :scissors].map { |shape| "computer selected #{shape}"}
end
end