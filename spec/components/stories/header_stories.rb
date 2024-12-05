class HeaderStories < ViewComponent::Storybook::Stories
  def login
    render Header::Component.new(user: User.new(email_address: "wisteria.r.s@gmail.com"))
  end

  def logout
    render Header::Component.new(user: nil)
  end
end
