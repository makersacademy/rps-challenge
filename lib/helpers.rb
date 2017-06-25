

module Helpers

  def name_field_is_blank
    params[:name] =~ /^\s*$/
  end

  def no_weapon_is_picked
    params[:weapon].nil?
  end

end
