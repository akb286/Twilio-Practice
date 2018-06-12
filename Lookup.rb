# Download the helper library from https://www.twilio.com/docs/ruby/install

require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
account_sid = 'AC1ecf912467a7266de186c1b998ea213f'
auth_token = 'ad912c3d0858267001ab745567333320'
@client = Twilio::REST::Client.new(account_sid, auth_token)

phone_number = @client.lookups.phone_numbers('+4916793929939').fetch(
                                                               type: 'carrier'
                                                             )

puts phone_number.caller_name
