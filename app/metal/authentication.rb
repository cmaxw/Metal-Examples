# Allow the metal piece to run in isolation
require(File.dirname(__FILE__) + "/../../config/environment") unless defined?(Rails)

class Authentication
  def self.call(env)
    session = env['rack.session']
    puts session.inspect
    if Path.user_authorized?(env["PATH_INFO"], session[:user_id])
      [404, {"Content-Type" => "text/html"}, ["Not Found"]]
    else
      [302, {"Content-Type" => "text/html", "Location" => "/login"}, ["You must log in."]]
    end
  end
end
