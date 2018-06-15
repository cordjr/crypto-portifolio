require 'rufus-scheduler'

scheduler = Rufus::Scheduler::singleton


scheduler.every '3s'do
 price_updater = PriceUpdaterService.new
 puts  "runing price updater service"
 price_updater.run

end
