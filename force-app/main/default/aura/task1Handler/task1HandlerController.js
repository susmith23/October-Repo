({
    handleComponentEvent : function(cmp,event) {
        var message = event.hetParam("message");
        cmp.ser("v.messageFromEvent",message);
  
    }
})