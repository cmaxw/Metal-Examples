# Allow the metal piece to run in isolation
require(File.dirname(__FILE__) + "/../../config/environment") unless defined?(Rails)

class Authentication
  def self.call(env)
    session = env["rack.session"]
    req = Rack::Request.new(env)
    params = req.params
    if env["PATH_INFO"] =~ /^\/admin.*/ && (session["user_id"].nil? || (session["user_id"] && User.connection.select_all("SELECT * FROM users WHERE id = #{session["user_id"]}").empty?))
      [302, {"Content-Type" => "text/html", "Location" => "/login?target_path=#{env["REQUEST_URI"]}"}, ["You must be logged in to view this page. You are being redirected."]]
    elsif env["REQUEST_METHOD"] == "POST" && env["PATH_INFO"] =~ /^\/authenticate/
      users = User.connection.select_all("SELECT * FROM users WHERE username='#{params["user"]["username"]}' AND password='#{params["user"]["password"]}'")
      unless users.empty?
        puts "authenticated #{users.first[:id].inspect}"
        session["user_id"] = users.first["id"]
        [302, {"Content-Type" => "text/html", "Location" => "#{params["target_path"] || "/"}"}, ["You have been logged in. You are being redirected."]]
      else
        puts "not authenticated"
        [302, {"Content-Type" => "text/html", "Location" => "/login"}, ["Authentication failed. You are being redirected."]]
      end
    else
      [404, {"Content-Type" => "text/html"}, ["Not Found"]]
    end
  end
end
