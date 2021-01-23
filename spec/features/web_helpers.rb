def sign_in_and_play
    visit '/'
    fill_in :player_1_name, with: "Alex"
    click_button 'Submit'
end

def possible_options
    [:rock, :paper, :scissors].map { |shape| "opponent selected #{shape.to_s.capitalize} "}
end