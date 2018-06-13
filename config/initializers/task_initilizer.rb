require 'rufus-scheduler'

scheduler = Rufus::Scheduler::singleton


scheduler.every '10s'do 
 price_updater = PriceUpdaterService.new
 puts  "runing price updater service"
 price_updater.run
   
end
