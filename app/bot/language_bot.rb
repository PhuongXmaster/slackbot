class LanguageBot < SlackRubyBot::Bot
  command 'hallo' do |client, data, match|
    client.say(text: "hello <#{data.user}>!", channel: data.channel)
  end

  command 'hello' do |client, data, match|
     I18n.locale = :vi
     text = I18n.t "hello", user: data.user
     client.say(text: text, channel: data.channel)
   end
end 
