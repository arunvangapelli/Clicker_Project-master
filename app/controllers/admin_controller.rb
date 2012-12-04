class AdminController < ApplicationController
before_filter :authenticate  
def index
   @total_users = User.count
  end
private
 def authenticate
  authenticate_or_request_with_http_basic do |name, password|
   name == "clickerguys" && password == "clicker"
  end
  end
end
