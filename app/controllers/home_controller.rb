class HomeController < ApplicationController
   before_filter :authenticate_user!
   #layout "admin"
   skip_authorization_check

end
