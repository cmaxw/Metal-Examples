# Allow the metal piece to run in isolation
require(File.dirname(__FILE__) + "/../../config/environment") unless defined?(Rails)

class AffiliateRedirects
  def self.call(env)   
    redirect = AffiliateRedirect.connection.select_all("SELECT * FROM affiliate_redirects WHERE path = '#{env["PATH_INFO"]}'").first
    if redirect && (location = redirect["location"])
      [302, {"Content-Type" => "text/html", "Location" => location}, ["You are being redirected."]]
    else
      [404, {"Content-Type" => "text/html"}, ["Not Found"]]
    end
  end
end
