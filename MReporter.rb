#!/usr/bin/env ruby

require 'net/smtp'
require 'subprocess'

COMMAND = ""
EMAIL = ""
PASSWORD = ""


output = Subprocess.check_output([COMMAND])
message = <<BODY
Subject: MReporter Report

Results:


BODY

message = " MReporter  \n" + message + output

Net::SMTP.start('smtp.gmail.com', 587, 'localhost', EMAIL, PASSWORD, :plain) do |smtp|
  smtp.send_message message, EMAIL, EMAIL
end

