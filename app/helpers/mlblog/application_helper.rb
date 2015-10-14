module Mlblog
  module ApplicationHelper
		
	  def statuses
	    {
	      'public' => '公開',
	      'private' => '非公開',
	    }
	  end
		

	  def get_message_type(type)
	    types = {"notice" => "success", "error" => "error", "alert" => "error"}
	    types[type]
	  end
		
  end

end
