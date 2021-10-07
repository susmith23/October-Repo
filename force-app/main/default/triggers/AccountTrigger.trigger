trigger AccountTrigger on Account (after update) {
    
    AccountTriggerHandler.updateownerid(trigger.new,trigger.OldMap);

}