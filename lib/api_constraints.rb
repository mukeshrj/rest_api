class ApiConstraints
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
    @default || req.headers['Accept'].include?("application/vnd.rest_api.v#{@version}")
  end
end

# curl -H 'Accept: application/vnd.rest_api.v1' \
#             http://api.localhost:3000/users