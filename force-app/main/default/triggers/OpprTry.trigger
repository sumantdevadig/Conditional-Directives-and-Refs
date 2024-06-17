trigger OpprTry on Opportunity (before update) {
  
    if(Trigger.isUpdate && Trigger.isBefore){
       OpprCls.insertOppr(Trigger.new, Trigger.oldMap);
    }
  }