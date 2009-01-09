:- op(1080, fx, select).
:- op(1070, yfy, where).
:- op(1060, yfy, from).
:- op( 900, yfy, join).
:- op( 850, yfy, on).
:- op( 800, xfx, [or, and]).
:- op( 100, yfy, like).
:- dynamic (select)/1.


select
    users(id, name),
    permission(name)
from
    users
    join user_permissions
        on user(id) = user_permissions(user_id)
    join permissions
        on permissions(id) = user_permissions(permission_id)
where
    users(id) = 1
    or users(name) like 'M?yer'.

:- (select X from Y where Z),
    write_canonical(X),nl,
    write_canonical(Y),nl,
    write_canonical(Z),nl.

:- write_canonical(select a from b where c).

