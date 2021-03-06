% Script to run Driver generated by facile.pl
clear all; 
G437_I43Driver; 
figure(1); plot(t, TG0000_1); title('TG0000\_1');
figure(2); plot(t, y(:,22));  title('SLOWEST COMPONENT Y(22)');

t_event1 = find(t == event_times(1));
t_event2 = find(t == event_times(2));
t_event3 = find(t == event_times(3));
t_event4 = find(t == event_times(4));
t_event5 = find(t == event_times(5));
t_event6 = find(t == event_times(6));
t_event7 = find(t == event_times(7));

disp('Value of TG0000_1 and Y(:,22) at event times');
event_times
format short eng
disp('TG0000_1= '); disp(TG0000_1([t_event1,t_event2,t_event3,t_event4,t_event5,t_event6,t_event7])');
disp('Y(:,22)= '); disp(y([t_event1,t_event2,t_event3,t_event4,t_event5,t_event6,t_event7],22)');

