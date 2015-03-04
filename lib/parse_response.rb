
class Request
  attr_accessor :header_line, :verb, :path, :query_string, :version ,:query_params

  def initialize(input)
    @input = input
  end

  def header_line
    @input.split("\n")[0]
  end

  def verb
    self.header_line.split(" ")[0]
  end

  def path
    self.header_line.split(" ")[1].split("?")[0]
  end

  def query_string
    self.header_line.split(" ")[1].split("?")[1]
  end

  def version
    self.header_line.split(" ")[2]
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


end

input = File.read("data/get_request.txt")
request = Request.new input




# puts request.header_line
# puts request.verb
# puts request.path
# puts request.query_string
# puts request.version
# p request.query_hash
