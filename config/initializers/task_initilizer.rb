require 'rufus-scheduler'

scheduler = Rufus::Scheduler::singleton
price_updater = PriceUpdaterService.new

scheduler.every '40s'do 
 puts  "runing price updater service"
 price_updater.run
   
end