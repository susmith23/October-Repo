trigger trig1 on Account (before insert, before update) {   
    if (trigger.isInsert && trigger.isBefore) {
        for (Account a: trigger.new) {
            if (a.Industry == 'Agriculture') {a.Rating = 'Hot';}
            else if (a.Industry == 'Consulting') {a.Rating = 'Warm';}
            else if (a.Industry == 'Electronics') {a.Rating = 'Cold';}
            else {a.Rating = NULL;}
        }
    }   
    if (trigger.isUpdate && trigger.isBefore) {
        for (Account a: trigger.new) {
            if (trigger.oldMap.get(a.Id).Industry == NULL) {
                if (a.Industry == 'Agriculture') {a.Rating = 'Hot';}
                else if (a.Industry == 'Consulting') {a.Rating = 'Warm';}
                else if (a.Industry == 'Electronics') {a.Rating = 'Cold';}
                else {a.Rating = NULL;}
            }          
            if (trigger.oldMap.get(a.Id).Industry != NULL) {
                if (trigger.oldMap.get(a.Id).Industry != a.Industry) {
                    if (a.Industry == 'Agriculture') {a.Rating = 'Hot';}
                    else if (a.Industry == 'Consulting') {a.Rating = 'Warm';}
                    else if (a.Industry == 'Electronics') {a.Rating = 'Cold';}
                    else {a.Rating = NULL;}
                }
            }          
            if (a.Industry == NULL) {
                a.Rating = NULL;
            }
        }
    }
}