def sign_in_and_play
  visit '/'
  find('.form_inputfield').set 'Bob'
  click_on(class: 'button_submit')
end
