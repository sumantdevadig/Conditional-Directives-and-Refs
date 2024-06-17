trigger Accounttrigger on Account (before insert) {
        if(Trigger.isInsert && Trigger.isBefore){
          AccountCls.insertaccount(Trigger.new);
    }

  }