def sign_in
  visit '/'
  fill_in :player_1, with: 'matt'
  click_button('Submit')
end

def stub_comp_with_scissors
  allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
end
