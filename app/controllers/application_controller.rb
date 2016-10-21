class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  def sqlc(sql)
       results = ActiveRecord::Base.connection.execute(sql)
       if results.present?
           return results
       else
           return nil
       end
   end
end
