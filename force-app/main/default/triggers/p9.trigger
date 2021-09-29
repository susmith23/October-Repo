trigger p9 on Account (before delete) {
    if(trigger.isBefore && trigger.isDelete) {
        for(AggregateResult agg : [Select AccountId, count(Id) cid From Contact Where AccountId IN: trigger.oldMap.keySet() Group By AccountId]) { 
            if(((Integer)agg.get('cid'))>3) {
                                           trigger.oldMap.get((Id)agg.get('AccountId')).addError('You cannot this account because it has more than 3 accounts');
                                       }
                                   }
    }
}