trigger CampaignTry on Campaign (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
      if(Trigger.isDelete && Trigger.isBefore){
       CampaignCls.insertCampaign(Trigger.old);
    }

}