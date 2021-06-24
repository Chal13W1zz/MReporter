require 'net/smtp'


EMAIL = ""
PASSWORD = ""
message = <<BODY

BODY

message = " ** MRepporter ** \n" + message

Net::SMTP.start('smtp.gmail.com', 587, 'localhost', EMAIL, PASSWORD, :plain) do |smtp|
  smtp.send_message message, EMAIL, EMAIL
end
