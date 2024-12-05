class HeaderComponentStories < ViewComponent::Storybook::Stories
  def login
    render HeaderComponent.new(user: User.new(email_address: "wisteria.r.s@gmail.com"))
  end

  def logout
    render HeaderComponent.new(user: nil)
  end
end
