class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def return_response(data, message, status, error, options)
    result = Hash.new
    result[:data] = Hash.new
    result[:data] = data
    result[:message] = message
    result[:status] = status
    result[:update] = 'false'

    if (error)
      result[:error] = message
    end
    render json: result, status: status, extra_options: options
  end

  private :return_response

  def return_error_response(message, status)
    return_response(nil, message, status, true, nil)
  end

  def return_success_response(data, message, status, options = nil)
    return_response(data, message, status, false, options)
  end

end
