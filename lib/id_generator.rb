# frozen_string_literal: true

class IdGenerator
  def next
    SecureRandom.uuid
  end
end