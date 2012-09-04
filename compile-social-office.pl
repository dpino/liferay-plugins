#!/usr/bin/perl

@portlets = ('contacts-portlet', 'calendar-portlet', 'events-display-portlet', 'microblogs-portlet', 'private-messaging-portlet', 'so-portlet', 'tasks-portlet', 'wysiwyg-portlet');

for $portlet (@portlets) {
    print "Compiling $portlet\n";
    `cd portlets/$portlet/; ant all`;
}

# Theme
print "Compiling themes/so-theme/\n";
`cd themes/so-theme/; ant all`;

# Hooks
print "Compiling hooks/so-hook/\n";
`cd hooks/so-hook/; ant all`;
