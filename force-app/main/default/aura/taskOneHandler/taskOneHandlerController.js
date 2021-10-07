({
	handleComponentEvent : function(component, event) {
		var message = event.getParam("message");
        
        component.set("v.messageFromEvent", message);	
    }
})