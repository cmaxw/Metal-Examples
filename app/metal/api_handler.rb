# Allow the metal piece to run in isolation
require(File.dirname(__FILE__) + "/../../config/environment") unless defined?(Rails)

class ApiHandler
  def self.call(env)
    req = Rack::Request.new(env)
    @params = req.params
    if (env["PATH_INFO"] =~ (/^\/api\/(xml|json)\/user\//)) && ApiKey.find_by_key(@params["key"])
      format = env["PATH_INFO"].split("/")[2]
      return [200, {"Content-Type" => "application/xml"}, [User.find_by_sql(["SELECT * FROM users WHERE id = ?", @params["id"]]).to_xml]] if format == "xml"
      [200, {"Content-Type" => "application/json"}, [User.find_by_sql(["SELECT * FROM users WHERE id = ?", @params["id"]]).to_json]] if format == "json"
    else
      [404, {"Content-Type" => "text/html"}, ["Not Found"]]
    end
  end
end
