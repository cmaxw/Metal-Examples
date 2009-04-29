# Allow the metal piece to run in isolation
require(File.dirname(__FILE__) + "/../../config/environment") unless defined?(Rails)

class StaticPages
  def self.call(env)
    static_page = StaticPage.find_by_path(env["PATH_INFO"])
    if static_page
      [200, {"Content-Type" => "text/html"}, [static_page.html]]
    else
      [404, {"Content-Type" => "text/html"}, ["Not Found"]]
    end
  end
end
