({
	handleHubname : function(component, event, helper) {
        console.log('value--',event.target.id);
        
        var navEvt = $A.get("e.force:navigateToSObject");
        navEvt.setParams({
            "recordId": event.target.id
        });
        navEvt.fire();
	},
    doInit : function(cmp) {
      
        var action = cmp.get("c.hubLists");
 
       
        action.setCallback(this, function(response) {
            var state = response.getState();

            if (state === "SUCCESS") {
                
                console.log('response.getReturnValue()-->',JSON.parse(response.getReturnValue()));
 cmp.set("v.Hubs", JSON.parse(response.getReturnValue()));
                
            }
            else if (state === "INCOMPLETE") {
                
            }
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " + 
                                 errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });
 
       
        $A.enqueueAction(action);
    }
})