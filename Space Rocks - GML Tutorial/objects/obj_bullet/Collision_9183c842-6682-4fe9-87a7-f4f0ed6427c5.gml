/// @description

if(other == creator) exit;

instance_destroy();

if(other.faction == faction) exit;

// Damage object
with(other) event_perform(ev_other, ev_user1);


