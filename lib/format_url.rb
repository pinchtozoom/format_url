require "format_url/version"
require "format_url/model_additions"
require "format_url/railtie" if defined? Rails

module FormatUrl
  def self.format_url(url)
    if url && url.length > 0 && url.to_s !~ url_regexp && "http://#{url}" =~ url_regexp
      "http://#{url}"
    else
      url
    end
  end

  def self.url_regexp
    /\Ahttps?:\/\/([^\s:@]+:[^\s:@]*@)?[-[[:alnum:]]]+(\.[-[[:alnum:]]]+)+\.?(:\d{1,5})?([\/?]\S*)?\z/iux
  end
end