# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    # "rob@hitt.com, go@hello.com, clinton@n.com"
    email_array = @emails.split(" ")

    email_array.map do |indv_address|
      indv_address.gsub(/,/,"")
    end.uniq
    #remove_white_space(email_array)
  end

  def remove_white_space(email_array)
    email_array.map { |email_address| email_address.strip }
  end
end

# test_class = EmailParser.new("rob@hitt.com, go@hello.com, clinton@n.com")
# print test_class.parse
