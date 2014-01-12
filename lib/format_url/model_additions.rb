module FormatUrl
  module ModelAdditions
    def format_url(attribute)
      before_validation do
        send("#{attribute}=", FormatUrl.format_url(send(attribute)))
      end if attribute
      validates_format_of attribute, with: FormatUrl.url_regexp, message: "is not a valid URL", :allow_blank => true
    end
  end
end