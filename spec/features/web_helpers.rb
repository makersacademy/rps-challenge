def sign_in_and_play
  visit '/'
  fill_in 'player1_name', with: 'Bob'
  click_button 'Submit'
end

def select_radio_button(go)
  choose(go)
  click_button('Submit')
end

def stub_sample(go)
  allow_any_instance_of(Array).to receive(:sample).and_return(go)
end
