trigger ContactTrigger on Contact (before insert) {
        ContactManager.processBefore(Trigger.new);
        
}