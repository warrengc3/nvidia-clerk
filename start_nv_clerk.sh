#nvidia-clerk script wrapper
#!/bin/sh
#start_nv_clerk.sh
#by: warrengc3
#
#This is an example script to accept inputs and run the nvidia-clerk script.
#We aren't doing any input checking yet so make sure you use what you have setup properly and test before deploying.
#
# TWILIO - Here we setup our Twilio environment
set TWILIO_ACCOUNT_SID=YOUR_TWILIO_ACCOUNT_SID
set TWILIO_TOKEN=YOUR_TWILIO_TOKEN
set TWILIO_SOURCE_NUMBER=YOUR_TWILIO_PHONE_NR
set TWILIO_DESTINATION_NUMBER=THE_NUMBER_TO_WHICH_TO_SEND_THE_NOTIFICATIONS
#
# DISCORD - Here you setup Discord
set DISCORD_WEBHOOK_URL=DISCORD_WEBHOOK_URL_HERE
#
# TWITTER 
set TWITTER_CONSUMER_KEY=YOUR_TWITTER_CONSUMER_KEY_HERE
set TWITTER_CONSUMER_SECRET=YOUR_TWITTER_CONSUMER_SECRET_HERE
set TWITTER_ACCESS_TOKEN=YOUR_TWITTER_ACCESS_TOKEN_HERE
set TWITTER_ACCESS_SECRET=YOUR_TWITTER_ACCESS_SECRET_HERE
#
# TELEGRAM
set TELEGRAM_API_KEY=YOUR_TELEGRAM_API_KEY_HERE
set TELEGRAM_CHAT_ID=YOUR_TELEGRAM_CHAT_ID_HERE
#
#Now we ask the questions
echo "Welcome to nvidia clerk"
echo "What GPU do you seek? 3070,3080 or 3090:"
read model
echo "From where do you seek? AUT,BEL,CAN,CZE,DNK,FIN,FRA,DEU,USA,GBR,IRL,ITA,SWE,LUX,POL,PRT,ESP, NOR, NLD:"
read region
echo "Would you like to use messaging? sms,discord,telegram,twitter"
read messaging
echo "You have selected $model and $region and $messaging"
echo "Starting nvidia clerk now ....."
./nvidia-clerk-darwin $messaging -region=$region -model=$model
