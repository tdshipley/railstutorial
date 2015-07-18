module UsersHelper

  # Returns a gravatar for a user
  def gravatar_for(user)
    hashed_email = Digest::MD5::hexdigest user.email.downcase
    gravatar_url = "https://secure.gravatar.com/avatar/#{hashed_email}"
    image_tag gravatar_url, alt: user.name, class: 'gravatar'
  end
end
