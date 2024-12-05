# frozen_string_literal: true

class Header::Component < ViewComponent::Base
  def initialize(user:)
    @user = user
  end
end
