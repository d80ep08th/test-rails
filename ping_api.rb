require 'httparty'
HTTParty.get("http://localhost:3000/ping", body: {email: 'user1@example.com'}).body
