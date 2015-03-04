
class Request
  attr_accessor :header_line, :verb, :path, :query_string, :version ,:query_params, :header_body, :header_hash, :body_hash, :params_hash

  def initialize(input)
    @input = input
  end


  def verb
    header_line.split(" ")[0]
  end

  def path
    header_line.split(" ")[1].split("?")[0]
  end

  def version
    header_line.split(" ")[2]
  end

  def query_hash
    array = query_string.split("&")
    result = {}
    array.each do |a|
      key = a.split("=")[0]
      value = a.split("=")[1]
      result[key] = value
    end
    result
  end

  def body_hash
    array = body_params.split("&")
    result = {}
    array.each do |a|
      key = a.split("=")[0]
      value = a.split("=")[1]
      result[key] = value
    end
    result
  end

  def header_hash
    result = {}
    header_body.each do |a|
      if a == ""
        return result
      end
      key = a.split(": ")[0]
      value = a.split(": ")[1]
      result[key] = value
    end
    result
  end

  def params_hash
    query_hash.merge(body_hash)
  end


private

  def header_line
    @input.split("\n")[0]
  end

  def header_body
    @input.split("\n").drop(1)
  end

  def body_params
    array = @input.split("\n")
    array.each do |a|
      if a == ""
        return array.last
      end
    end
  end



  def query_string
    header_line.split(" ")[1].split("?")[1]
  end

end

input = File.read("data/post_request.txt")
request = Request.new input




# puts request.header_line
# p request.verb
# p request.path
# puts request.query_string
# p request.version
# p request.query_hash
# p request.header_body
p request.params_hash
