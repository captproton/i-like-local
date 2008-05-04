module ApplicationHelper
  
  # Show the local time
  def tz(time_at)
    TzTime.zone.utc_to_local(time_at.utc)
  end

  # Request from an iPhone or iPod touch? (Mobile Safari user agent)
  def iphone_user_agent?
    request.env["HTTP_USER_AGENT"] && request.env["HTTP_USER_AGENT"][/(Mobile\/.+Safari)/]
  end
  
  # Request from Google Base? (Atom 1.0 format)
  def google_base?
    request.env["HTTP_USER_AGENT"] && request.env["HTTP_USER_AGENT"][/(Mobile\/.+Safari)/]
  end  
end
