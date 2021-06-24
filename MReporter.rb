require 'net/smtp'
require 'subprocess'

COMMAND = ""
EMAIL = ""
PASSWORD = ""


output = Subprocess.check_output([COMMAND])
message = <<BODY
Command Results
BODY

message = " MRepporter  \n" + message + output

Net::SMTP.start('smtp.gmail.com', 587, 'localhost', EMAIL, PASSWORD, :plain) do |smtp|
  smtp.send_message message, EMAIL, EMAIL
end

