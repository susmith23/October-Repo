({
	fireApplicationEvent : function(cmp, event) {
        var appEvent = $A.get("e.c:task2Event");
        appEvent.setParams({
            "message" : "Application Event Fired" });
        appEvent.fire();
	}
})