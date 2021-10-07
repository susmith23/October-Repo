({
	fireComponentEvent : function(component, event) {
		var cmpEvent = component.getEvent("cmpEvent");
        cmpEvent.setParams({
            "message": "Component Event Fired"
        });
        cmpEvent.fire();
	}
})