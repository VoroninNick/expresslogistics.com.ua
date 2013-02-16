class ApplicationController < ActionController::Base
  protect_from_forgery

  if request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first == 'en'

    cookies[:language] = {
        :value => 'eng',
        :expires => 1.years.from_now.utc
    }

  elsif request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first == 'ru'

    cookies[:language] = {
        :value => 'rus',
        :expires => 1.years.from_now.utc
    }

  elsif request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first == 'ua'

    cookies[:language] = {
        :value => 'ukr',
        :expires => 1.years.from_now.utc
    }

  elsif request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first == 'de'

    cookies[:language] = {
        :value => 'de',
        :expires => 1.years.from_now.utc
    }
    
  end
end
