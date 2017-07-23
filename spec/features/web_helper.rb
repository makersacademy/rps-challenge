def sign_in
  visit '/'
  fill_in :name, with: 'Yulia'
  click_button 'PLAY'
end
