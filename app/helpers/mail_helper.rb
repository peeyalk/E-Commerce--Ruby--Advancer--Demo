module MailHelper
  def get_email
    return YAML.load_file("config/secrets.yml")[Rails.env]["email"]
  end
  
  def get_password
    return YAML.load_file("config/secrets.yml")[Rails.env]["password"]
  end
end

