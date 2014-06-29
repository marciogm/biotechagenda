module EventosHelper
  BR_ABBR_MONTHNAMES = [nil] + %w(Jan Fev Mar Abr Mai Jun Jul Ago Set Out Nov Dez)
  BR_MONTHNAMES = [nil] + %w(Janeiro Fevereiro Março Abril Maio Junho Julho Agosto Setembro Outubro Novembro Dezembro)

  def abbr_month_name(month)
      BR_ABBR_MONTHNAMES[month]
  end
  
  def month_name(month)
    BR_MONTHNAMES[month]
  end
  
  def url_with_protocol(url)
      /^http/.match(url) ? url : "http://#{url}"
  end
  
end
