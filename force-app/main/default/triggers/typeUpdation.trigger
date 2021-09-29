trigger typeUpdation on Account (before insert, before update) {
    
    if(trigger.isBefore)
    {
        if( trigger.isInsert || trigger.isUpdate) 
        {
        typeUpdationHandler.updatefield(trigger.new);
    }
    }

}