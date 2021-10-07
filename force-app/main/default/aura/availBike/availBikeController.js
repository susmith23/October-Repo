({
	doInit : function(cmp) {
        
        var action = cmp.get("c.BikeLists");
        action.setParams({
            hubId: cmp.get("v.recordId")
        });
      
        action.setCallback(this, function(response) {
            var state = response.getState();
            console.log('state-->',state);
            console.log('response.getError()-->',response.getError());
            if (state === "SUCCESS") {
        
                console.log('response.getReturnValue()-->',JSON.parse(response.getReturnValue()));
 cmp.set("v.bikeList", JSON.parse(response.getReturnValue()));
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