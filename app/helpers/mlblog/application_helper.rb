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
		
	  def status_label(status)
	    if status == 'public'
	      return '<span class="ui small teal label">公開中</span>'.html_safe
	    else
	      return '<span class="ui small label">非公開中</span>'.html_safe
	    end
	  end
		
		def method_missing method, *args, &block
      if method.in? Rails.application.routes.url_helpers.instance_methods
        main_app.send(method, *args)
      else
        super
      end
    end
		
  end

end
